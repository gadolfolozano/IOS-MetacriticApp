//
//  GetTokenManager.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 31/08/23.
//

import Foundation

class GetTokenManager : ObservableObject {
    private let GRANT_TYPE = "client_credentials"
    
    @Published var gotToken = false
    @Published var games: [GameModel] = []
    
    private var token: String? = nil
    
    func getData() {
        // Step 1: Provide a URL
        guard let url = URL(string:  "https://id.twitch.tv/oauth2/token?client_id=\(Keys.CLIENT_ID.rawValue)&client_secret=\(Keys.CLIENT_SECRET.rawValue)&grant_type=\(GRANT_TYPE)"
        ) else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalCacheData
        )
        
        request.httpMethod = "POST"
        
        // Step 2: Create a URLSession to handle the URL
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            // Step 3: Retrieve the data from the URL
            guard let data = data else {
                print("Could not retrieve data...")
                return
            }
            
            print("got data: \(data)")
            
            // Step 4: Decode the data from the URL
            do {
                let tokenResponse = try JSONDecoder().decode(TokenResponse.self, from: data)
                DispatchQueue.main.async {
                    print(tokenResponse)
                    self.token = tokenResponse.accessToken
                    self.gotToken = self.token != ""
                }
            } catch {
                print("\(error)")
            }
        }.resume()
    }
    
    func getMainGameList() {
        print("getMainGameList called... use token: \(self.token ?? "nil")")
        
        guard let url = URL(string:  "https://api.igdb.com/v4/games/" ) else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalCacheData
        )
        
        let body = "fields *;"
        
        request.httpMethod = "POST"
        request.httpBody = Data(body.utf8)
        request.setValue(Keys.CLIENT_ID.rawValue, forHTTPHeaderField: "Client-ID")
        request.setValue("bearer \(self.token ?? "nil")", forHTTPHeaderField: "Authorization")
        
        
        // Step 2: Create a URLSession to handle the URL
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            // Step 3: Retrieve the data from the URL
            guard let data = data else {
                print("Could not retrieve data...")
                return
            }
            
            print("got data: \(data)")
            
            // Step 4: Decode the data from the URL
            do {
                let gamesResponse = try JSONDecoder().decode(GamesResponse.self, from: data)
                DispatchQueue.main.async {
                    print(gamesResponse)
                    
                    self.games = gamesResponse.map { gameResponse in
                        GameModel(id: gameResponse.id, name: gameResponse.name)
                    }
                }
            } catch {
                print("\(error)")
            }
        }.resume()
    }
}
