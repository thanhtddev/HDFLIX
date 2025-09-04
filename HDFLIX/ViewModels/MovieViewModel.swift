//
//  MovieViewModel.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

class MovieViewModel: ObservableObject {
    @Published var query: String = ""
    @Published var filteredMovies: [Movie] = []
    
    private var allMovies: [Movie] = []
    init(movies: [Movie])
    {
        self.allMovies = movies
        self.filteredMovies = movies
    }
    func search()
    {
        if query.isEmpty {
            filteredMovies = allMovies
        }else {
            filteredMovies = allMovies.filter {
                $0.title.lowercased().contains(query.lowercased())
            }
        }
        
    }
}
class FavoriteViewModel: ObservableObject {
    @Published var favorites: Set<Int> = []
    
    func addToFavorites(_ movie: Movie) -> Bool {
        favorites.contains(movie.id)
        
    }
    
    func removeFromFavorites(_ movie: Movie) {
        favorites.remove(movie.id)
    }
}
