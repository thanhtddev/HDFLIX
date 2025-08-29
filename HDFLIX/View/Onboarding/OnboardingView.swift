//
//  OnboardingScreen.swift
//  HDFLIX
//
//  Created by Thanh Dao on 10/8/25.
//

import SwiftUI

struct OnboardingScreen: View {
    
    var body: some View {
        ZStack{
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                Image("logo")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Welcome")
                    .font(.SF_Pro_Bold(50))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                Text("Time to dive into the newest movies!")
                    .font(.SF_Pro_Medium(20))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                Button{
                    
                }label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 387, height: 46)
                            .foregroundColor(.mediumred)
                        Text("Get Start")
                            .font(.SF_Pro_Bold(16))
                            .foregroundColor(.white)
                    }
                    
                }
                .padding()
            }
        }
    }
}
#Preview {
    OnboardingScreen()
}
