//
//  Listing.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/27/24.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfTeams: Int
    let numberOfPlayers: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var numberOfCurrentsPlayers: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case friendlyMatch
    case competitiveMatch
    
    var imageName: String {
        switch self {
        case .friendlyMatch: return "medal"
        case .competitiveMatch: return "trophy.circle"
        }
    }
    
    var title: String {
        switch self {
        case .friendlyMatch: return "Friendly Match"
        case .competitiveMatch: return "Competitive Match"
        }
    }
    
    var id:Int {return self.rawValue}
}




enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case water
    case ball
    
    var title: String {
        switch self {
        case .water: return "Water"
        case .ball: return "Game Ball"
        }
    }
    
    var imageName: String {
        switch self {
        case .water: return "waterbottle.fill"
        case .ball: return "baseball"
        }
    }
    
    var id: Int { return self.rawValue}
    
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case match
    case game
    
    var description: String {
        switch self {
        case .match: return "Match"
        case .game: return "Game"
        }
    }
    var id: Int { return self.rawValue}
}
