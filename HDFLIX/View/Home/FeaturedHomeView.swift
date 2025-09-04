//
//  FeaturedHomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct FeaturedHomeView: View {
    let featuredImage = ["featured1", "featured2", "featured3", "featured4", "featured5"]
    
    var body: some View {
        VStack {
            HStack {
                Image("xcheck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .padding(.leading)
                Text("Featured Lists")
                    .font(.SF_Pro_Bold(22))
                    .foregroundColor(.white)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(featuredImage, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 223, height: 238)
                                .cornerRadius(20)
                                .padding(.leading , 10)
                    }
                }
            }
        }
        .padding(.top)
    }
}
#Preview {
    ZStack {
        BaseView()
        FeaturedHomeView()
    }
}
