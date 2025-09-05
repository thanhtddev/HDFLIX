//
//  NetworkView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct NetworkView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.lightred, .darkred], startPoint: .topLeading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("cinema")
            }
            VStack{
                HStack{
                    Text("THE BIG")
                        .font(.SF_Pro_Medium(16))
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Button{
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        ZStack{
                            Circle()
                                .fill(Color.white)
                                .frame(width: 44)
                                .opacity(0.4)
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.trailing)
                }
                HStack {
                    Text("Streamers")
                        .font(.SF_Pro_Bold(30))
                        .foregroundColor(.white)
                        .padding(.leading)
                    Spacer()
                }
                ScrollView (showsIndicators: false){
                    VStack{
                        ForEach(NetworkData.networks) { network in
                            NavigationLink(destination: NetworkDetailView(network: network)) {
                                HStack{
                                    Image(network.logo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60)
                                        .padding()
                                    Text(network.name)
                                        .font(.SF_Pro_Medium(16))
                                        .foregroundStyle(.white)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                        .padding()
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    NetworkView()
}
