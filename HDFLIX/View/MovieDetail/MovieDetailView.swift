//
//  MovieDetailView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    @State private var showSheet: Bool = false
    var body: some View {
        ZStack {
            BaseView()
            VStack (spacing: 0){
                Image(movie.banner)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 440, height: 600)
                    .ignoresSafeArea(.container, edges: .top)
                Spacer()
                SheetView(movie: movie)
                    .offset(y: -60)
            }
        }
    }
}

#Preview {
    MovieDetailView(movie:
                        Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5)
    )
}
