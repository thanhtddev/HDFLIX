//
//  PageIndicator.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct PageIndicator: View {
    @State private var currentPage = 0
    
    var body: some View {
        VStack (spacing: 0) {
            TabView(selection: $currentPage) {
                LanguageSelectionView()
                    .tag(0)
                GenreSelectionView()
                    .tag(1)
                PersonalizeView()
                    .tag(2)
            }
            HStack(spacing: 6) {
                ForEach(0 ..< 3, id: \.self) { index in
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
                Image(systemName: "arrow.right")
                    .foregroundStyle(.white)
            }
        }
    }
}
#Preview {
    PageIndicator()
}
