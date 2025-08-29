//
//  PopularMovieView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct PopularMovieView: View {
    let movies : [Movie]
    var body: some View {
        VStack{
            HStack{
                Image("xcheck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .padding(.leading)
                Text("Popular Movies")
                    .font(.SF_Pro_Bold(22))
                    .foregroundColor(.white)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .padding()
                }
                
            }
            ScrollView(.horizontal) {
                HStack {
                    ForEach(movies.prefix(5)) {movie in
                        VStack {
                            Image(movie.poster)
                            Text(movie.title)
                                .font(.SF_Pro_Bold(14))
                                .foregroundColor(.white)
                                .frame(maxWidth: 128, alignment: .leading)
                                .padding(.leading)
                                .lineLimit(1)
                                .truncationMode(.tail)
                            Text(movie.genre)
                                .font(.SF_Pro_Medium(12))
                                .foregroundColor(.white)
                                .opacity(0.5)
                                .frame(maxWidth: 128, alignment: .leading)
                                .padding(.leading)
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .padding()
            }
        }
    }
}

