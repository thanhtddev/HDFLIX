//
//  HomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 10/8/25.
//

import SwiftUI

struct HomeView: View {
    
    let movies: [Movie]
    let actors: [Actor]
    let studios: [Studio]
    let genres: [Genre]
    @State private var showPopover = false
    
    var body: some View {
        ZStack {
            BaseView()
            ScrollView (showsIndicators: false) {
                VStack{
                    HStack{
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 95, height: 30)
                            .padding()
                        Spacer()
                        Button{
//                            showPopover = true
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 24, height: 24)
                                .padding()
                        }
                    }
                    HStack{
                        Spacer()
                            .frame(width: 15)
                        Button {
                            
                        } label: {
                            Image(systemName: "movieclapper")
                                .foregroundColor(.white)
                            Text("Movies")
                                .font(.SF_Pro_Medium(16))
                                .foregroundColor(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 120, height: 36)
                        )
                        .padding()
                        Button {
                            
                        } label: {
                            Image(systemName: "tv")
                                .foregroundColor(.white)
                            Text("TV Shows")
                                .font(.SF_Pro_Medium(16))
                                .foregroundColor(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 120, height: 36)
                        )
                        .padding()
                        
                        Button {
                            showPopover = true
                        } label: {
                            Text("Genres")
                                .font(.SF_Pro_Medium(16))
                                .foregroundColor(.white)
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                        }
                        .navigationDestination(isPresented: $showPopover, destination: {
                            GenresView(genres: genres)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 110, height: 36)
                        )
                        .padding()
                        Spacer()
                    }
                    //HOME BANNER
                    ImagePageView(movies: movies)
                    
                    //SUGGEST MOVIE
                    SuggestHomeView(movies: movies)
                    
                    //NETWORK
                    NetworkHomeView()
                    
                    //FEATURED LIST
                    FeaturedHomeView()
                    //POPULAR MOVIE
                    PopularMovieView(movies: movies)
                    
                    //POPULAR TV
                    PopularTVView(movies: movies)
                    
                    //TOP ACTOR
                    ActorHomeView(actors: actors)
                    
                    //STUDIO
                    StudioHomeView(studios: studios)
                }
            }
        }
    }
}
#Preview {
    NavigationStack {
        HomeView(movies: movieData.movies, actors: ActorData.actors, studios: StudioData.studios, genres: dataGenre.genres)
    }
}
