//
//  ContentView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MainView(movies: movieData.movies, actors: ActorData.actors, languages: LanguageData.languages)
        }        
    }
}

#Preview {
    ContentView()
}

