//
//  Games.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//


import Foundation
// MARK: - Games
struct Games: Decodable {
    let next: String?
    let results: [Game]?
    
    enum CodingKeys: String, CodingKey {
        case next
        case results
    }
}

// MARK: - Game
struct Game: Decodable, Identifiable {
    let id = UUID()
    let name: String?
    let released: String?
    let backgroundImage: String?
    let rating: Double?
    let platforms: [PlatformElements]?
    let short_screenshots: [ShortScreenshot]?
    
    enum CodingKeys: String, CodingKey {
        case name, released
        case backgroundImage = "background_image"
        case rating
        case platforms = "platforms"
        case short_screenshots
    }
    

    //MARK: Method to convert array of object values to slug's string array
    func createSlugList(for platforms: [PlatformElements]?) -> String {
        guard let platforms = platforms else { return "" }
            return  platforms
            .compactMap { $0.platform.slug }
                .joined(separator: ", ")
        }
    //Method to convert array of object values to names string array
    func createNameList(for platforms: [PlatformElements]?) -> String {
        guard let platforms = platforms else { return "" }
            return  platforms
            .compactMap { $0.platform.name }
                .joined(separator: ", ")
        }
}
// MARK: - PlatformElements
struct PlatformElements: Decodable {
    let platform: Platform
}
// MARK: - Platform
struct Platform: Decodable {
    let slug: String?
    let name : String?
    
    enum CodingKeys: String, CodingKey {
        case slug
        case name
    }
}


// MARK: - ShortScreenshot
struct ShortScreenshot: Decodable {
    let image: String?
    
    enum CodingKeys: String, CodingKey {
        case image
    }
    
}

var games = [Game(name: "Game", released: "12/10/2019", backgroundImage: "pikachu", rating: nil, platforms: nil, short_screenshots: nil), Game(name: "Game", released: "12/10/2019", backgroundImage: "pikachu", rating: nil, platforms: nil, short_screenshots: nil), Game(name: "Game", released: "12/10/2019", backgroundImage: "pikachu", rating: nil, platforms: nil, short_screenshots: nil), Game(name: "Game", released: "12/10/2019", backgroundImage: "pikachu", rating: nil, platforms: nil, short_screenshots: nil) ]
