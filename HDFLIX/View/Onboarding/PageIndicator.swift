//
//  PageIndicator.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct PageIndicator: View {
    let allPage: Int
    let currentPage: Int
    
    var body: some View {
        HStack(spacing: 6) {
            ForEach(0 ..< allPage, id: \.self) { index in
                if index == currentPage {
                    Capsule()
                        .fill(Color.mediumred)
                        .frame(width: 30, height: 8)
                        .animation(.easeInOut, value: currentPage)
                }else{
                    Circle()
                        .fill(Color.gray.opacity(0.5))
                        .frame(width: 6, height: 6)
                        .animation(.easeInOut, value: currentPage)
                }
            }
        }
    }
}
