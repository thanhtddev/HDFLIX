//
//  ActorHomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct ActorHomeView: View {
    
    @State private var navigateToActor = false
    let actors: [Actor]
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Top Actors")
                    .font(.SF_Pro_Bold(22))
                    .foregroundColor(.white)
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false){
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(actors){ actor in
                        NavigationLink(destination: ActorView(actor: actor)) {
                            HStack{
                                Image(actor.photo)
                                VStack {
                                    Text(actor.name)
                                        .font(.SF_Pro_Medium(16))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: 182, alignment: .leading)
                                        .padding(.leading)
                                    Text(actor.movies.map { $0.title }.joined(separator: ", "))
                                        .font(.SF_Pro_Medium(12))
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: 182, alignment: .leading)
                                        .lineLimit(1)
                                        .padding(.leading)
                                }
                            }
                            .padding(5)
                            .padding(.leading)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ZStack {
            BaseView()
            ActorHomeView(actors: ActorData.actors)
        }
    }
}
