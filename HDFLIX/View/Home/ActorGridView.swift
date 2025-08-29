//
//  ActorGridView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 25/8/25.
//

import SwiftUI

struct ActorGridView: View {
    let imageActor: String
    let nameActor: String
    let movies: String
    
    var body: some View {
        HStack {
            Image(imageActor)
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
            VStack{
                Text(nameActor)
                    .font(.custom("Poppins-SemiBold", size: 14))
                    .foregroundColor(.white)
                    .frame(width: 182, alignment: .leading)
                Text(movies)
                    .font(.caption)
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .frame(width: 182, alignment: .leading)
            }
        }
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 20) {
            
        }
    }
}
#Preview {
    ActorGridView(imageActor: "actor", nameActor: "Jason Statham", movies: "Snatch, The Meg, and Wrath of Man")
}
