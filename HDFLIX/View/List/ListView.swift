//
//  ListView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 25/8/25.
//

import SwiftUI

struct ListView: View {
    @StateObject private var favoriteVM = FavoriteViewModel()
    let movies: [Movie]
    
    var body: some View {
        ZStack{
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            VStack {
                Text("My List")
                    .font(.SF_Pro_Bold(30))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 17)
                Spacer()
                if favoriteVM.favorites.isEmpty {
                    ListEmptyView()
                } else {
                    ListFavoriteView(favoriteVM: favoriteVM)
                }
                Spacer()
            }
        }
    }
}
#Preview {
    ListView(movies: movieData.movies)
}
