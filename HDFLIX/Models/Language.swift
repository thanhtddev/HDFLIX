//
//  Language.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct Language: Identifiable {
    let id = UUID()
    let name: String
    let flag: String
}

struct LanguageData: Codable {
    static let languages: [Language] = [
        .init(name: "English", flag: "english"),
        .init(name: "Germany", flag: "germany"),
        .init(name: "France", flag: "france"),
        .init(name: "Vietnamese", flag: "vietnam"),
        .init(name: "Japanese", flag: "japan"),
        .init(name: "China", flag: "china")
        ]
}
