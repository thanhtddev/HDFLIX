//
//  Studio.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct Studio: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let movies: [Movie]
}

//struct StudioData {
//    static let studios: [Studio] = [
//        Studio(id: 1, name: "Marvel", logoImage: "marvel", movies: [MovieData.movies[1], MovieData.movies[2]]),
//        Studio(id: 2, name: "Pixar", logoImage: "pixar", movies: [MovieData.movies[2], MovieData.movies[3]]),
//        Studio(id: 3, name: "Warner Bros. Picture", logoImage: "wbp", movies: [MovieData.movies[3], MovieData.movies[4]]),
//        Studio(id: 4, name: "Walt Disney Picture", logoImage: "wdp", movies: [MovieData.movies[4], MovieData.movies[5]]),
//        Studio(id: 5, name: "Paramount", logoImage: "paramount", movies: [MovieData.movies[5], MovieData.movies[6]]),
//        Studio(id: 6, name: "Lucasfilm", logoImage: "lucas", movies: [MovieData.movies[1], MovieData.movies[6]]),
//        Studio(id: 7, name: "DC Company", logoImage: "dc", movies: [MovieData.movies[1], MovieData.movies[5]]),
//        Studio(id: 8, name: "Columbia Picture", logoImage: "columbia", movies: [MovieData.movies[6], MovieData.movies[2]]),
//        Studio(id: 9, name: "DreamWorks", logoImage: "dreamwork", movies: [MovieData.movies[4], MovieData.movies[2]]),
//        ]
//}
