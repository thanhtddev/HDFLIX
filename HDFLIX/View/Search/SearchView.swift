//
//  SearchView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            VStack {
                SearchBarView()
            }
        }
    }
}

#Preview {
    SearchView()
}
