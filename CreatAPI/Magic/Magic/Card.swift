//
//  Card.swift
//  Magic
//
//  Created by Student on 13/09/23.
//

import SwiftUI
import Foundation

 struct Card: Decodable {
    
    let name: String?
    let names: [String]?
    let manaCost: String?
    let cmc: Int?
    let colors: [String]?
    let colorIdentity: [String]?
    let type: String?
    let supertypes: [String]?
    let types: [String]?
    let subtypes: [String]?
    let rarity: String?
    let set: String?
    let setName: String?
    let text: String?
    let artist: String?
    let number: String?
    let power: String?
    let toughness: String?
    let layout: String?
    let multiverseid: String?
    let imageUrl: String?
    let rulings: [[String:String]]?
    let foreignNames: [ForeignName]?
    let printings: [String]?
    let originalText: String?
    let originalType: String?
    let id: String?
    let flavor: String?
    let loyalty: String?
    let gameFormat: String?
    let releaseDate: String?
    let legalities: [Legality]?
    
//    public static func ==(lhs: Card, rhs: Card) -> Bool {
//        return lhs.id == rhs.id
//    }
}

struct ForeignName: Decodable {
    let name: String
    let language: String
    let multiverseid: Int?
}

 struct Legality: Decodable {
    let format: String
    let legality: String
}

struct CardsResponse: Decodable {
    let cards: [Card]
}
//
//
//
//protocol ResponseObject: Decodable {}
