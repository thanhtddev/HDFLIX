//
//  ActorHomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct ActorHomeView: View {
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

#Preview {
    ZStack {
        BaseView()
        ActorHomeView(actors: [
            Actor(id: 1, name: "Jason Statham", photo: "actor1", movies:[
                Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5)
            ]),
            Actor(id: 2, name: "Jason Statham", photo: "actor1", movies:[
                Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5),
                Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5)
            ]),
            Actor(id: 3, name: "Jason Statham", photo: "actor1", movies:[
                Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5)
            ]),
            Actor(id: 4, name: "Jason Statham", photo: "actor1", movies:[
                Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5)
            ]),
        ])
    }
}
