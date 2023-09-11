//
//  GameModel.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 10/09/23.
//

import Foundation

struct GameModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
}
