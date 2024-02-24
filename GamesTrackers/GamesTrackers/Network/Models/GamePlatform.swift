//
//  GamePlatform.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//

import Foundation
import SwiftUI
//MARK: Games Platform
enum GamePlatform: String {
    case playstation = "18"
    case xbox = "1"
    case nintendo = "7"
    
    var description: String {
        switch self {
        case .playstation: return "Playstation"
        case .xbox: return "Xbox"
        case .nintendo: return "Nintendo"
        }
    }
}

struct GamePlatformItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var platformList = [GamePlatformItem(name: "Playstation", image: "playstation"),
                    GamePlatformItem(name: "Xbox", image: "xbox"),
                    GamePlatformItem(name: "Nintendo", image: "nintendo")]
