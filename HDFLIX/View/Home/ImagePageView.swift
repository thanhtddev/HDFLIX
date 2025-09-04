//
//  ImagePageView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//
import SwiftUI

struct ImagePageView : View {
    @State private var currentPage = 0
    let movies: [Movie]
    @State private var likedMovies: Set<Int> = []
    
    var body: some View {
        VStack (spacing: 0){
            
            TabView(selection: $currentPage) {
                ForEach(Array(movies.prefix(5)).indices, id: \.self) { index in
                    ZStack {
                        Image(movies[index].banner)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 289, height: 433)
                            .cornerRadius(10)
                            .tag(index)
                            .overlay {
                                VStack{
                                    HStack{
                                        Button {
                                            if likedMovies.contains(movies[index].id) {
                                                likedMovies.remove(movies[index].id)
                                            } else {
                                                likedMovies.insert(movies[index].id)
                                            }
                                        } label: {
                                            Image(systemName: likedMovies.contains(movies[index].id) ? "heart.fill" : "heart")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                                .foregroundColor(likedMovies.contains(movies[index].id) ? .red : .gray)
                                                .padding(8)
                                                .background(Circle().fill(Color.white.opacity(0.7)))
                                        }
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 20)
                                        Spacer()
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(Color.white.opacity(0.7))
                                                .frame(width: 56, height: 32)
                                            HStack(spacing: 4) {
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.yellow)
                                                Text(String(format: "%.1f", movies[index].rate))
                                                    .font(.SF_Pro_Medium(14))
                                                    .foregroundColor(.black)
                                            }
                                            .padding(.horizontal, 20)
                                            .padding(.vertical, 20)
                                            
                                        }
                                    }
                                    .frame(width: 289)
                                    Spacer()
                                    Text(movies[index].genre)
                                        .font(.SF_Pro_Medium(12))
                                        .foregroundColor(.white)
                                    Text(movies[index].title)
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
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing: 8) {
                ForEach(Array(movies.prefix(5)).indices, id: \.self) { index in
                    if index == currentPage {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.mediumred)
                            .frame(width: 25, height: 8)
                        
                    } else {
                        Circle()
                            .fill(index == currentPage ? Color.mediumred : Color.gray)
                            .frame(width:8, height: 8)
                        
                    }
                    
                }
            }
            .animation(.easeInOut, value: currentPage)
            .padding(.top, 8)
        }
        .frame(height: 460)
    }
}

