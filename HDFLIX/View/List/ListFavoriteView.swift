//
//  ListMovieView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 4/9/25.
//

import SwiftUI

struct ListFavoriteView: View {
    @ObservedObject var viewModel: FavoriteViewModel
    var body: some View {
        ForEach(viewModel.favorites) { movie in
            HStack {
                Image(movie.poster)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 90)
                    .cornerRadius(8)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(movie.title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(movie.genre)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ZStack {
        BaseView()
        ListFavoriteView(viewModel: FavoriteViewModel())
    }
}
