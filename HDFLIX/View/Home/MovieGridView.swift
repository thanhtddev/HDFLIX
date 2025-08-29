//
//  MovieGridView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 25/8/25.
//

import SwiftUI

struct MovieGridView: View {
    let imageName: String
    let title: String
    let genre: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 180)
                .cornerRadius(10)
            Text(title)
                .font(.title3)
                .frame(width: 120, alignment: .leading)
                .foregroundStyle(.white)
                .padding(.leading)
            Text(genre)
                .font(.system(size: 15))
                .foregroundStyle(.white)
                .opacity(0.7)
                .frame(width: 120, alignment: .leading)
                .padding(.leading)
        }
        
    }
}

