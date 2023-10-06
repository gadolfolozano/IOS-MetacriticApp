//
//  GameDetailView.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 04/10/23.
//

import SwiftUI

struct GameDetailView: View {
    var game: GameModel
    
    var body: some View {
        ScrollView {
            HStack(alignment: .top) {
                Image("stmarylake")
                    .resizable()
                    .cornerRadius(8)
                    .frame(width: 120, height: 180)
                    .padding(.top, 6)
                    .padding(.leading, 6)
                
                
                VStack(alignment: .leading) {
                    Text(game.name)
                        .foregroundStyle(Color("primaryTextColorBold"))
                        .font(Font.custom("Poppins-Bold", size: 16))
                        .lineLimit(1)
                        .padding(.bottom, 2)
                    Text(game.summary)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundStyle(Color("primaryTextColorLight"))
                        .lineLimit(4)
                }
                .padding(.leading, 6)
                
                Spacer()
            }
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(game.name)
            }
        }
    }
}

#Preview {
    GameDetailView(game: GameModel(
        id: 2,
        name: "Name",
        summary: "Summary \nmore content\nadditional")
    )
}
