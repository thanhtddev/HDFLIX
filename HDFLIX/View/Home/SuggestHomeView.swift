//
//  SuggestHomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct SuggestHomeView: View {
    
    let movies : [Movie]
    @State private var navigateToSuggest = false
    
    var body: some View {
        VStack {
            Button {
                navigateToSuggest = true
            } label: {
                HStack {
                    Image("star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .padding()
                    Text("Suggest for you")
                        .font(.SF_Pro_Bold(22))
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .navigationDestination(isPresented: $navigateToSuggest) {
                SuggestView(movies: movies)
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 0){
                    ForEach(movies.prefix(5)) { movie in
                        VStack {
                            Image(movie.poster)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 180)
                                .cornerRadius(8)
                            Text(movie.title)
                                .font(.SF_Pro_Bold(14))
                                .foregroundColor(.white)
                                .frame(maxWidth: 128, alignment: .leading)
                                .lineLimit(1)
                                .truncationMode(.tail)
                            Text(movie.genre)
                                .font(.SF_Pro_Medium(12))
                                .foregroundColor(.white)
                                .opacity(0.5)
                                .frame(maxWidth: 128, alignment: .leading)
                        }
                        .padding(.leading, 10)
                    }
                }
            }
        }
    }
}
#Preview {
    ZStack {
        BaseView()
        SuggestHomeView(movies: movieData.movies)
    }
}
