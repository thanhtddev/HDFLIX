//
//  Actor.swift
//  HDFLIX
//
//  Created by Thanh Dao on 26/8/25.
//

import Foundation

struct Actor: Identifiable {
    let id: Int
    let name: String
    let photo: String
    let movies: [Movie]
}

//struct ActorData {
//    static let actors: [Actor] = [
//        Actor(id: 1, name: "Jason Statham", photo: "actor1", movies: nil),
//        Actor(id: 2, name: "Pedro Pascal", photo: "actor1", movies: nil),
//        Actor(id: 3, name: "Jackie Sandler", photo: "actor1", movies: [MovieData.movies[4], MovieData.movies[5]]),
//        Actor(id: 4, name: "Ellen Pompeo", photo: "actor1", movies: [MovieData.movies[5], MovieData.movies[6]])
//        ]
//}
