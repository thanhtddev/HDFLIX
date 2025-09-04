//
//  SuggestSearchView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct SuggestSearchView: View {
    
    let movies: [Movie]
    var body: some View {
        VStack {
            HStack {
                Text("Suggest for you")
                    .font(.SF_Pro_Bold(20))
                    .foregroundColor(.white)
                    .padding(.leading, 27)
                    .padding(.top)
                Spacer()
            }
            ScrollView(showsIndicators: false) {
                ForEach(movies) { movie in
                    HStack {
                        Image(movie.poster)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 133, height: 92)
                            .cornerRadius(10)
                            .clipped()
                            .padding(.leading, 16)
                        VStack {
                            Text(movie.title)
                                .font(.SF_Pro_Bold(14))
                                .foregroundStyle(.white)
                                .frame(width: 180, alignment: .leading)
                                .padding(.bottom, 4)
                            Text(movie.genre)
                                .font(.SF_Pro_Medium(12))
                                .foregroundColor(.white.opacity(0.6))
                                .frame(width: 180, alignment: .leading)
                            
                        }
                        Spacer()
                        Image(systemName: "play.circle")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .padding(.trailing, 16)
                    }
                    .frame(width: 406, height: 92)
                    .padding(.horizontal, 18)
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.mediumblack
        SuggestSearchView(movies: [
            Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5),
            Movie(id: 2, title: "How to train your dragon", genre: "Horror, MyStery", poster: "banner6", banner: "poster2", overview: "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.", rate: 6.6),
            Movie(id: 3, title: "Fianl Destination", genre: "Horror, MyStery", poster: "banner5", banner: "poster3", overview: "In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.", rate: 7.6),
            Movie(id: 4, title: "Grey's Anatomy", genre: "Drama", poster: "banner4", banner: "poster1", overview: "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.", rate: 2.3),
            Movie(id: 5, title: "Ballerina", genre: "Action, Drama", poster: "banner8", banner: "poster2", overview: "The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other.", rate: 5.6),
            Movie(id: 6, title: "Ice Road", genre:"Action, Thriller", poster: "banner9", banner: "poster3", overview: "A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.", rate: 4.9),
            Movie(id: 7, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5),
            Movie(id: 8, title: "How to train your dragon", genre: "Horror, MyStery", poster: "banner6", banner: "poster2", overview: "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.", rate: 6.6),
            Movie(id: 9, title: "Fianl Destination", genre: "Horror, MyStery", poster: "banner5", banner: "poster3", overview: "In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.", rate: 7.6),
            Movie(id: 10, title: "Grey's Anatomy", genre: "Drama", poster: "banner4", banner: "poster1", overview: "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.", rate: 2.3),
            Movie(id: 11, title: "Ballerina", genre: "Action, Drama", poster: "banner8", banner: "poster2", overview: "The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other.", rate: 5.6),
            Movie(id: 12, title: "Ice Road", genre:"Action, Thriller", poster: "banner9", banner: "poster3", overview: "A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.", rate: 4.9)
        ])
    }
}
