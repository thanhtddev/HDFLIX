//
//  PeronalizeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 4/9/25.
//

import SwiftUI

struct PersonalizeView: View {
    @State var isShowSheet = true
    var body: some View {
        ZStack {
            //Color.mediumblack.edgesIgnoringSafeArea(.all)
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 89)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Image("personalize")
                Spacer()
            }
            
        }
    }
}

#Preview {
    PersonalizeView()
}
