//
//  GameListView.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 26/09/23.
//

import SwiftUI

struct GameListView: View {
    var games: [GameModel]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(games) { game  in
                    ZStack {
                        GameRowItemView(game: game)
                        NavigationLink(destination: GameDetailView(game: game)) {
                            EmptyView()
                        }
                        .opacity(0)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(InsetListStyle())
        }
    }
}

#Preview {
    GameListView(games: [
        GameModel(
            id: 2,
            name: "Name",
            summary: "Summary \nmore content\nadditional"
        ),
        GameModel(
            id: 1,
            name: "Name 2",
            summary: "Summary \nmore content\nadditional"
        ),
    ])
}
