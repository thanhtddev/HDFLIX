//
//  GenresView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct GenresView: View {
    let genres: [Genre]
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            VStack {
                ScrollView {
                    ForEach(genres) { genre in
                        Text(genre.name)
                            .font(.SF_Pro_Medium(18))
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                }
                .padding(.top)
                Button {
                    
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 44))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    GenresView(genres: [
        Genre(id: 1, name: "Action"),
        Genre(id: 2, name: "Action"),
        Genre(id: 3, name: "Action"),
        Genre(id: 4, name: "Action"),
        Genre(id: 5, name: "Action"),
        Genre(id: 6, name: "Action"),
        Genre(id: 7, name: "Action"),
        Genre(id: 8, name: "Action")
    ])
}
