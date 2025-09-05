//
//  ContentView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    
    var body: some View {
        NavigationStack {
            if isFirstLaunch {
                OnboardingScreen()
            } else {
                MainView(movies: movieData.movies, actors: ActorData.actors, languages: LanguageData.languages)
            }
        }        
    }
}

#Preview {
    ContentView()
}

