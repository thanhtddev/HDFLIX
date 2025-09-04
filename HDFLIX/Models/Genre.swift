//
//  Genre.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct Genre: Identifiable {
    var id: Int
    var name: String
}

struct dataGenre: Codable {
    static let genres: [Genre] = [
        .init(id: 1, name: "Action"),
        .init(id: 2, name: "Advanture"),
        .init(id: 3, name: "Animation"),
        .init(id: 4, name: "Comedy"),
        .init(id: 5, name: "Crime"),
        .init(id: 6, name: "Documentary"),
        .init(id: 7, name: "Drama"),
        .init(id: 8, name: "Family"),
        .init(id: 9, name: "Kids"),
        .init(id: 10, name: "Mystery"),
        .init(id: 11, name: "Romance"),
        .init(id: 12, name: "Talk"),
        .init(id: 13, name: "Science Fiction")
    ]
}
