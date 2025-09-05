//
//  StudioHomeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 29/8/25.
//

import SwiftUI

struct StudioHomeView: View {
    @State private var navigateToStudio = false
    let studios : [Studio]
    var body: some View {
        VStack {
            Text("Explore By Studios")
                .font(.SF_Pro_Bold(22))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Button {
                navigateToStudio = true
            } label: {
                VStack{
                    Spacer()
                    HStack{
                        Image("marvel")
                        Image("pixar")
                        Image("wbp")
                        Image("wdp")
                        Image("paramount")
                    }
                    HStack{
                        Image("lucas")
                        Image("dc")
                        Image("columbia")
                        Image("dreamwork")
                    }
                    Spacer()
                    HStack{
                        VStack{
                            Text("POPULAR")
                                .font(.SF_Pro_Medium(16))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Production Studios")
                                .font(.SF_Pro_Bold(30))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                        Spacer()
                        Image("camera")

                    }
                    Spacer()
                }
                .frame(width: 400, height: 316)
                .background(
                    LinearGradient(colors: [Color.lightpink, Color.darkpink] ,
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                    .cornerRadius(10)
                )
            }
            .navigationDestination(isPresented: $navigateToStudio){
                CompanyView(studios: studios)
            }
        }  
    }
}
#Preview {
    ZStack {
        BaseView()
        StudioHomeView(studios: StudioData.studios)
    }
}
