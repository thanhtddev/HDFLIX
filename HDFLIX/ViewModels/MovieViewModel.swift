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
    @Published var favoriteMovies: Set<Int> = []
    
    func toggleFavorite(for movie: Movie) {
        if favoriteMovies.contains(movie.id) {
            favoriteMovies.remove(movie.id)
        } else {
            favoriteMovies.insert(movie.id)
        }
    }
    
    func isFavorite(_ movie: Movie) -> Bool {
        favoriteMovies.contains(movie.id)
    }
    
    var favorites: [Movie] {
        movieData.movies.filter { favoriteMovies.contains($0.id) }
    }
}
