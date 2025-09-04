//
//  DataItemView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct DataItemView: View {
    let title: String
    @Binding var isOn: Bool
    
    var body: some View {
        HStack {
            Toggle(isOn: $isOn) {
                Text(title)
                    .font(.SF_Pro_Medium(16))
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal, 20)
        .frame(width: .infinity, height: 44)
    }
}

