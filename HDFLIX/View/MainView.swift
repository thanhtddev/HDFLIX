//
//  MainView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 15/8/25.
//

import SwiftUI

struct MainView: View {
    
    let movies: [Movie]
    let actors: [Actor]
    let languages: [Language]
        
    var body: some View {
        TabView {
            HomeView(movies: movies, actors: actors, studios: StudioData.studios, genres: dataGenre.genres)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ReelView()
                .tabItem {
                    Image(systemName: "video")
                    Text("Reel")
                }
            ListView(movies: [])
                .tabItem {
                    Image(systemName: "list.and.film")
                    Text("My List")
                }
            SettingView(languages: languages)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Setting")
                }
        }
        .accentColor(.white)
        .background(Color.mediumblack)
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    MainView(movies: movieData.movies, actors: ActorData.actors, languages: LanguageData.languages)
}
    
