//
//  ListEmptyView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct ListEmptyView: View {
    var body: some View {
        VStack {
            Image("iconList")
                .padding()
            Text("Your list is empty")
                .font(.SF_Pro_Medium(20))
                .foregroundColor(.white)
        }
        
    }
}

