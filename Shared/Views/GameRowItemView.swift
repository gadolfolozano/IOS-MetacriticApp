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
                .cornerRadius(8)
                .frame(width: 80, height: 80)
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
        .padding(12)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 4, y: 4)
    }
    
}

struct GameRowItemViewPreviews: PreviewProvider {
    static var previews: some View {
        
        GameRowItemView(
            game: GameModel(id: 2, name: "Name", summary: "Summary \nmore content\nadditional")
        )
        .previewLayout(.fixed(width: 600, height: 500))
    }
}
