//
//  NetworkHomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct NetworkHomeView: View {
    
    @State private var navigateToNetwork = false
    
    var body: some View {
        VStack {
            Text("Explore By Network")
                .font(.SF_Pro_Bold(22))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Button {
                navigateToNetwork = true
            } label: {
                VStack{
                    Spacer()
                    HStack{
                        Image("netflix")
                        Image("atv")
                        Image("hbo")
                        Image("paramount")
                        Image("universal")
                    }
                    HStack{
                        Image("primevideo")
                        Image("disney")
                        Image("hulu")
                        Image("amc")
                    }
                    Spacer()
                    HStack{
                        VStack{
                            Text("THE BIG")
                                .font(.SF_Pro_Medium(16))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Streamers")
                                .font(.SF_Pro_Bold(30))
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
            .navigationDestination(isPresented: $navigateToNetwork) {
                NetworkView()
            }
        }
    }
}
