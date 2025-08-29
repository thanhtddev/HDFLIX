//
//  CompanyView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct CompanyView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.lightpink, .darkpink],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("POPULAR")
                        .font(.SF_Pro_Medium(16))
                        .foregroundColor(.white)
                        .padding(.leading)
                    Spacer()
                    Button{
                        
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
                    Text("Production Studios")
                        .font(.SF_Pro_Bold(30))
                        .foregroundColor(.white)
                        .padding(.leading)
                    Spacer()
                }
                ScrollView{
                    VStack{
                        ForEach(StudioData.studios) { studio in
                            HStack{
                                Image(studio.logoImage)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                    .padding()
                                Text(studio.name)
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
}
#Preview {
    CompanyView()
}
