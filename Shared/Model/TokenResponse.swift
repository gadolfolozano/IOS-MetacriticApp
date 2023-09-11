//
//  GetTokenResponse.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 31/08/23.
//

import Foundation

struct TokenResponse: Codable {
    let accessToken: String
    let expiresIn: Int
    let tokenType: String

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case expiresIn = "expires_in"
        case tokenType = "token_type"
    }
}
