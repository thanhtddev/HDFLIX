//
//  ListMovieView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 4/9/25.
//

import SwiftUI

struct ListFavoriteView: View {
    
    @ObservedObject var favoriteVM: FavoriteViewModel
    
    var body: some View {
        ForEach(favoriteVM.favorites){ movie in
            HStack {
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
                }
                .frame(width: 406, height: 92)
                .padding(.horizontal, 18)
            }
        }
    }
}

#Preview {
    ZStack {
        BaseView()
        ListFavoriteView(favoriteVM: FavoriteViewModel())
    }
}
