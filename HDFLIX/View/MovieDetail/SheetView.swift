//
//  SheetView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 4/9/25.
//

import SwiftUI

struct SheetView: View {
    let movie : Movie
    var body: some View {
        ZStack {
//            Color.mediumblack.opacity(0.7)
//                .ignoresSafeArea(edges: .all)
            ScrollView (showsIndicators: false) {
                VStack {
                    HStack {
                        VStack{
                            Text(movie.title)
                                .font(.SF_Pro_Bold(22))
                                .frame(width: 250, alignment: .leading)
                                .foregroundColor(.white)
                            Text(movie.genre)
                                .font(.SF_Pro_Medium(14))
                                .frame(width: 250, alignment: .leading)
                                .foregroundColor(.white)
                                .opacity(0.7)
                        }
                        Spacer()
                        VStack {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                                .padding(10)
                                .background(
                                    Circle().fill(.mediumblack.opacity(0.7))
                                )
                            Text("Add list")
                                .font(.SF_Pro_Medium(14))
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 350, height: 120)
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "play.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            Text("Play")
                                .font(.SF_Pro_Bold(16))
                                .foregroundColor(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 350, height: 46)
                                .foregroundColor(.mediumred)
                        )
                    }
                    
                    Text(movie.overview)
                        .font(.SF_Pro_Medium(14))
                        .foregroundColor(.white)
                        .frame(width: 350)
                        .padding()
                    
                    Text("Casts")
                        .frame(width: 350, alignment: .leading)
                        .font(.SF_Pro_Bold(20))
                        .foregroundColor(.white)
                    Text("Suggest for you")
                        .frame(width: 350, alignment: .leading)
                        .font(.SF_Pro_Bold(20))
                        .foregroundColor(.white)
                }
            }
        }
        .frame(width: 370, height: 450)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.black.opacity(0.8))
        )
    }
}

#Preview {
    SheetView(movie:
                Movie(id: 1, title: "SuperMan", genre: "Crime, Drama", poster: "banner7", banner: "poster1", overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.", rate: 4.5)
    )
}
