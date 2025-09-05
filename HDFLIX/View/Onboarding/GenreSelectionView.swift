//
//  GenreSelectionView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 4/9/25.
//

import SwiftUI

struct GenreSelectionView: View {
    let columns = [
        GridItem(.adaptive(minimum: 120), spacing: 12)
    ]
    @State private var selectedGenre: Int? = nil
    
    var body: some View {
        ZStack {
            BaseView()
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 89)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Pick your favorite genres")
                    .font(.SF_Pro_Medium(18))
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Movies")
                    .font(.SF_Pro_Bold(24))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                LazyVGrid (columns: columns, spacing: 5) {
                    ForEach (dataGenre.genres) {genre in
                        Text(genre.name)
                            .font(.SF_Pro_Medium(16))
                            .foregroundStyle(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(selectedGenre == genre.id ? .white.opacity(0.5) : Color.mediumblack)
                            )
                            .foregroundColor(selectedGenre == genre.id ? .black : .black)
                            .onTapGesture {
                                selectedGenre = genre.id
                            }
                    }
                }
                Divider()
                Text("TV Shows")
                    .font(.SF_Pro_Bold(24))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                LazyVGrid (columns: columns, spacing: 5) {
                    ForEach (dataGenre.genres) {genre in
                        Text(genre.name)
                            .font(.SF_Pro_Medium(16))
                            .foregroundStyle(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(selectedGenre == genre.id ? .white.opacity(0.5) : Color.mediumblack)
                            )
                            .foregroundColor(selectedGenre == genre.id ? .black : .white)
                            .onTapGesture {
                                selectedGenre = genre.id
                            }
                    }
                }
                Spacer()
            }
        }
    }
}
#Preview {
    GenreSelectionView()
}
