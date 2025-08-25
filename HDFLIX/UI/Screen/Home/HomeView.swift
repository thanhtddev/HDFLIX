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
            ScrollView {
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
                    ScrollView(.horizontal) {
                        HStack {
                            Image("banner1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 255, height: 417)
                                .cornerRadius(10)
                                .padding()
                            Image("banner2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 255, height: 417)
                                .cornerRadius(10)
                                .padding()
                            Image("banner3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 255, height: 417)
                                .cornerRadius(10)
                                .padding()
                        }
                    }
                    VStack {
                        HStack {
                            Image("forward")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 36, height: 36)
                                .padding()
                            Text("Continue Watching")
                                .font(.title2)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                    VStack {
                        HStack {
                            Image("star")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 36, height: 36)
                                .padding()
                            Text("Suggest for you")
                                .font(.title2)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding()
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20){
                                MovieGridView(imageName: "banner4", title: "Grey's Anatomy", genre: "Crime, Drama")
                                MovieGridView(imageName: "banner5", title: "Final Destination", genre: "Horror, Mystery")
                                MovieGridView(imageName: "banner6", title: "How to train your dragon", genre: "Fantasy, Family")
                            }
                            
                        }
                    }
                    VStack {
                        Text("Explore By Network")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        VStack{
                            Spacer()
                            HStack{
                                Image("icon2")
                                Image("icon3")
                                Image("icon5")
                                Image("icon2")
                                Image("icon3")
                            }
                            HStack{
                                Image("icon2")
                                Image("icon3")
                                Image("icon5")
                                Image("icon2")
                            }
                            Spacer()
                            HStack{
                                VStack{
                                    Text("THE BIG")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Streamers")
                                        .font(.system(size: 34))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding()
                                Spacer()
                                Image("isolation")

                            }
                            Spacer()
                        }
                        .frame(width: 400, height: 316)
                        .background(
                            LinearGradient(colors: [Color.lightred, Color.darkred] ,
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                            .cornerRadius(10)
                        )
                    }
                    VStack{
                        HStack{
                            Image("xcheck")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 28)
                                .padding(.leading)
                            Text("Popular Movies")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding()
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20){
                                MovieGridView(imageName: "banner4", title: "Grey's Anatomy", genre: "Crime, Drama")
                                MovieGridView(imageName: "banner5", title: "Final Destination", genre: "Horror, Mystery")
                                MovieGridView(imageName: "banner6", title: "How to train your dragon", genre: "Fantasy, Family")
                            }
                            
                        }
                    }
                    VStack{
                        HStack{
                            Image("xcheck")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 28)
                                .padding(.leading)
                            Text("Popular TV Shows")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding()
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20){
                                MovieGridView(imageName: "banner4", title: "Grey's Anatomy", genre: "Crime, Drama")
                                MovieGridView(imageName: "banner5", title: "Final Destination", genre: "Horror, Mystery")
                                MovieGridView(imageName: "banner6", title: "How to train your dragon", genre: "Fantasy, Family")
                            }
                            
                        }
                    }
                    VStack{
                        Text("Top Actors")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal) {
                            VStack(spacing: 20) {
                            
                            }
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
