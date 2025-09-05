//
//  NetworkDetailView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct NetworkDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let network: Network
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        ZStack {
            BaseView()
            VStack{
                HStack{
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .padding(.leading)
                            .frame(width: 44, height: 44)
                    }
                    Spacer()
                    Text(network.name)
                        .font(.SF_Pro_Bold(20))
                        .foregroundColor(.white)
                    Spacer()
                    Color.clear
                        .frame(width: 44, height: 44)
                        .padding(.trailing)
                }
                .frame(height: 50)
                ScrollView (showsIndicators: false){
                    LazyVGrid(columns: columns, spacing: 16){
                        ForEach(network.movies){ movie in
                            VStack(alignment: .leading) {
                                Image(movie.poster)
                                    .frame(width: 128, height: 180)
                                Text(movie.title)
                                    .font(.SF_Pro_Bold(14))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 128, alignment: .leading)
                                    .padding(.leading)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                Text(movie.genre)
                                    .font(.SF_Pro_Medium(12))
                                    .foregroundColor(.white)
                                    .opacity(0.5)
                                    .frame(maxWidth: 128, alignment: .leading)
                                    .padding(.leading)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    NetworkDetailView(network: NetworkData.networks[0])
}
