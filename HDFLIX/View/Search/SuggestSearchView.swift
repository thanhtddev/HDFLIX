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
        SuggestSearchView(movies: movieData.movies)
    }
}
