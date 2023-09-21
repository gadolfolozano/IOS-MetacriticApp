//
//  GameRowItemView.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 18/09/23.
//

import SwiftUI

struct GameRowItemView: View {
    var game: GameModel
    
    var body: some View {
        
        HStack(alignment: .top) {
            Image("chincoteague")
                .resizable()
                .frame(width: 50, height: 70)
                .padding(.top, 8)
            
            VStack(alignment: .leading) {
                Text(game.name)
                    .font(.title2)
                    .lineLimit(1)
                    .padding(.bottom, 2)
                Text(game.summary)
                    .font(.body)
                    .lineLimit(4)
            }
        }
    }
    
}

struct GameRowItemViewPreviews: PreviewProvider {
    static var previews: some View {
        GameRowItemView(
            game: GameModel(id: 0, name: "Name", summary: "Summary \nmore content\nadditional")
        ).previewLayout(.fixed(width: 600, height: 250))
    }
}
