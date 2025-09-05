//
//  GenresView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct GenresView: View {
    
    let genres: [Genre]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            VStack {
                ScrollView(showsIndicators: false){
                    ForEach(genres) { genre in
                        Text(genre.name)
                            .font(.SF_Pro_Medium(18))
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                }
                .padding(.top)
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 44))
                        .foregroundColor(.white)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    GenresView(genres: dataGenre.genres)
}
