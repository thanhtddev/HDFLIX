//
//  HomeBannerView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct HomeBannerView: View {
    @State private var likedMovies: Set<Int> = []
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(movieData.movies.prefix(3)) { movie in
                    ZStack(alignment: .topTrailing) {
                        Image(movie.banner)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 289, height: 433)
                            .cornerRadius(10)
//                            .scrollTransition(transition: {contnet, phase in
//                                contnet
//                                    .scaleEffect(phase.isIdentity ? 1 : 0.9)
//                            })
                            .padding(.horizontal, 55)
                            .overlay {
                                VStack{
                                    HStack{
                                        Button {
                                            if likedMovies.contains(movie.id) {
                                                likedMovies.remove(movie.id)
                                            } else {
                                                likedMovies.insert(movie.id)
                                            }
                                        } label: {
                                            Image(systemName: likedMovies.contains(movie.id) ? "heart.fill" : "heart")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                                .foregroundColor(likedMovies.contains(movie.id) ? .red : .gray)
                                                .padding(8)
                                                .background(Circle().fill(Color.white.opacity(0.7)))
                                        }
                                        .padding(5)
                                        Spacer()
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(Color.white.opacity(0.7))
                                                .frame(width: 56, height: 32)
                                            HStack(spacing: 4) {
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.yellow)
                                                Text(String(format: "%.1f", movie.rate))
                                                    .font(.SF_Pro_Medium(14))
                                                    .foregroundColor(.black)
                                            }
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 10)
                                            
                                        }
                                    }
                                    .frame(width: 289)
                                    Spacer()
                                    Text(movie.genre)
                                        .font(.SF_Pro_Medium(12))
                                        .foregroundColor(.white)
                                    Text(movie.title)
                                        .font(.SF_Pro_Bold(20))
                                        .foregroundColor(.white)
                                    Button{
                                        
                                    } label: {
                                        HStack{
                                            Image(systemName: "play.fill")
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 5)
                                            Text("Play")
                                                .font(.SF_Pro_Bold(18))
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 120, height: 42)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.mediumred)
                                        )
                                    }
                                    .padding()
                                }
                            }
                        
                    }
                    .scrollTransition(transition: {contnet, phase in
                        contnet
                            .scaleEffect(phase.isIdentity ? 1 : 0.9)
                    })
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeBannerView()
}
