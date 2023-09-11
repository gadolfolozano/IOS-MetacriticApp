//
//  GamesResponse.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 31/08/23.
//

import Foundation

struct GamesResponseElement: Codable {
    let id: Int
    let ageRatings: [Int]?
    let aggregatedRating, aggregatedRatingCount: Int?
    let alternativeNames, bundles: [Int]?
    let category: Int
    let collection, cover: Int?
    let createdAt: Int
    let externalGames: [Int]?
    let firstReleaseDate, follows, franchise: Int?
    let franchises, gameModes, genres, involvedCompanies: [Int]?
    let keywords: [Int]?
    let name: String
    let platforms, playerPerspectives: [Int]?
    let rating: Double?
    let ratingCount: Int?
    let releaseDates, screenshots, similarGames: [Int]?
    let slug: String
    let summary: String?
    let tags, themes: [Int]?
    let totalRating: Double?
    let totalRatingCount: Int?
    let updatedAt: Int
    let url: String
    let videos, websites: [Int]?
    let checksum: String
    let gameLocalizations, gameEngines: [Int]?
    let parentGame, status, hypes: Int?
    let artworks, languageSupports: [Int]?
    let versionParent: Int?
    let versionTitle: String?

    enum CodingKeys: String, CodingKey {
        case id
        case ageRatings = "age_ratings"
        case aggregatedRating = "aggregated_rating"
        case aggregatedRatingCount = "aggregated_rating_count"
        case alternativeNames = "alternative_names"
        case bundles, category, collection, cover
        case createdAt = "created_at"
        case externalGames = "external_games"
        case firstReleaseDate = "first_release_date"
        case follows, franchise, franchises
        case gameModes = "game_modes"
        case genres
        case involvedCompanies = "involved_companies"
        case keywords, name, platforms
        case playerPerspectives = "player_perspectives"
        case rating
        case ratingCount = "rating_count"
        case releaseDates = "release_dates"
        case screenshots
        case similarGames = "similar_games"
        case slug, summary, tags, themes
        case totalRating = "total_rating"
        case totalRatingCount = "total_rating_count"
        case updatedAt = "updated_at"
        case url, videos, websites, checksum
        case gameLocalizations = "game_localizations"
        case gameEngines = "game_engines"
        case parentGame = "parent_game"
        case status, hypes, artworks
        case languageSupports = "language_supports"
        case versionParent = "version_parent"
        case versionTitle = "version_title"
    }
}

typealias GamesResponse = [GamesResponseElement]
