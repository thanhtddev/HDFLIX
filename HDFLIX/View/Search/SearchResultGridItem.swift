//
//  SearchResultGridItem.swift
//  HDFLIX
//
//  Created by Thanh Dao on 5/9/25.
//

import SwiftUI

struct SearchResultGridItem: View {
    
    let item: MultiSearchResult
    
    var body: some View {
        VStack{
            if let poster = item.poster {
                Image(poster)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 128, height: 180)
                    .cornerRadius(10)
            } else {
                Rectangle()
                    .frame(width: 128, height: 180)
                    .foregroundColor(.gray)
                    .cornerRadius(10)
            }
            Text(item.displayTitle)
                .font(.SF_Pro_Bold(14))
                .foregroundColor(.white)
                .frame(maxWidth: 128, alignment: .leading)
                .padding(.leading)
                .lineLimit(1)
                .truncationMode(.tail)
            Text(item.displayGenre)
                .font(.SF_Pro_Medium(12))
                .foregroundColor(.white)
                .opacity(0.5)
                .frame(maxWidth: 128, alignment: .leading)
                .padding(.leading)
        }
    }
}

