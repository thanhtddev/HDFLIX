//
//  ListOfflineView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 4/9/25.
//

import SwiftUI

struct ListOfflineView: View {
    var body: some View {
        VStack {
            Image("iconNetwork")
                .padding()
            Text("You're offline")
                .font(.SF_Pro_Bold(20))
                .foregroundColor(.white)
        }
    }
}
