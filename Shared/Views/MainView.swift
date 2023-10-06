//
//  MainView.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 01/09/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var tokenManager: GetTokenManager
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    
    var body: some View {
        TabView(selection: $selection) {
            GameListView(games: tokenManager.games)
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            Text("TODO")
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }.onAppear {
            print("MainView appear!")
            tokenManager.getMainGameList()
        }
    }
}
