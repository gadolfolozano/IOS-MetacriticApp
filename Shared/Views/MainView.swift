//
//  MainView.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 01/09/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var tokenManager: GetTokenManager
    
    var body: some View {
        List {
            ForEach(tokenManager.games) { game  in
                GameRowItemView(game: game)
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(InsetListStyle())
        .onAppear {
            print("MainView appear!")
            tokenManager.getMainGameList()
        }
    }
}

/*struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}*/
