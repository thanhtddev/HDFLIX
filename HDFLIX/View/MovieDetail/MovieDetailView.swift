//
//  MovieDetailView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movie: Movie
    @State private var showSheet: Bool = false
    @State private var isBookmarked = false
    @State private var isPLayed = false
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var favoriteVM: FavoriteViewModel
    var body: some View {
        ZStack {
            BaseView()
            VStack {
                ZStack {
                    VStack {
                        Image(movie.banner)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 440, height: 660)
                            .mask {
                                UnevenRoundedRectangle(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 80,
                                    bottomTrailingRadius: 80,
                                    topTrailingRadius: 0
                                )
                                .frame(width: 440, height: 660)
                            }
                            .overlay {
                                VStack {
                                    Color.clear.frame(height: 55)
                                    HStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(Color.white)
                                                .frame(width: 56, height: 32)
                                            HStack(spacing: 4) {
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.yellow)
                                                Text(String(format: "%.1f", movie.rate))
                                                    .font(.SF_Pro_Bold(14))
                                                    .foregroundColor(.black)
                                            }
                                            .padding(.horizontal, 20)
                                            .padding(.vertical, 20)
                                        }
                                        .padding(.leading, 20)
                                        Spacer()
                                        Button {
                                            dismiss()
                                        } label: {
                                            ZStack{
                                                Circle()
                                                    .fill(Color.black)
                                                    .frame(width: 44)
                                                    .opacity(0.6)
                                                Image(systemName: "xmark")
                                                    .foregroundColor(.white)
                                            }
                                        }
                                        .padding(.trailing, 30)
                                    }
                                    Spacer()
                                }
                            }
                    }
                    
                }
                Spacer()
            }
            .ignoresSafeArea(edges: .top)
            VStack {
                Spacer()
                ScrollView (showsIndicators: false) {
                    VStack{
                        HStack {
                            VStack {
                                Text(movie.title)
                                    .font(.SF_Pro_Bold(22))
                                    .foregroundStyle(.white)
                                    .frame(width: 230, alignment: .leading)
                                Text(movie.genre)
                                    .font(.SF_Pro_Medium(14))
                                    .foregroundStyle(.white)
                                    .opacity(0.6)
                                    .frame(width: 230, alignment: .leading)
                            }
                            Spacer()
                            VStack {
                                Button {
                                    favoriteVM.toggleFavorite(for: movie)
                                    isBookmarked.toggle()
                                } label: {
                                    ZStack{
                                        Circle()
                                            .fill(Color.black)
                                            .frame(width: 44)
                                            .opacity(0.6)
                                        Image(systemName: isBookmarked ? "checkmark" : "plus")
                                            .font(.system(size: 20, weight: .bold))
                                            .foregroundColor(.white)
                                    }
                                }
                                Text(isBookmarked ? "Added" : "Add list")
                                    .font(.SF_Pro_Medium(14))
                                    .foregroundStyle(.white)
                            }
                        }
                        Button {
                            isPLayed.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.mediumred)
                                    .frame(height: 46)
                                HStack {
                                    Image(systemName: isPLayed ? "pause.fill" : "play.fill")
                                        .font(.system(size: 20))
                                        .foregroundStyle(.white)
                                    Text(isPLayed ? "Resume" : "PLay")
                                        .font(.SF_Pro_Bold(20))
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                        Text(movie.overview)
                            .font(.SF_Pro_Medium(16))
                            .foregroundStyle(.white)
                            .opacity(0.9)
                            .padding(.vertical)
                        Text("Casts")
                            .font(.SF_Pro_Bold(20))
                            .foregroundStyle(.white)
                            .frame(width: 370, alignment: .leading)
                    }
                }
                    
                
            }
            .clipShape(
                UnevenRoundedRectangle(
                    topLeadingRadius: 20, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 20
                )
            )
            .padding()
            .background(Color.mediumblack.opacity(0.8))
            .frame(width: 370, height: 600)
        } // ZStack
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MovieDetailView(movie: movieData.movies[2], favoriteVM: FavoriteViewModel())
}
