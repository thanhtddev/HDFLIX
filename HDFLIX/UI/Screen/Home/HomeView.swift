//
//  HomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 10/8/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            BaseView()
            VStack{
                HStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 95, height: 30)
                        .padding()
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                        .padding()
                }
                HStack{
                    Spacer()
                        .frame(width: 15)
                    Button {
                        
                    } label: {
                        Image(systemName: "movieclapper")
                            .foregroundColor(.white)
                        Text("Movies")
                            .font(.callout)
                            .foregroundColor(.white)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 120, height: 36)
                    )
                    .padding()
                    Button {
                        
                    } label: {
                        Image(systemName: "tv")
                            .foregroundColor(.white)
                        Text("TV Shows")
                            .font(.callout)
                            .foregroundColor(.white)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 120, height: 36)
                    )
                    .padding()
                    Spacer()
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
