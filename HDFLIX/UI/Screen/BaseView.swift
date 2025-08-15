//
//  BaseView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 15/8/25.
//

import SwiftUI

struct BaseView: View {
    var body: some View {
        LinearGradient(colors: [
            Color.grayMedium,
            Color.black
        ], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}
#Preview {
    BaseView()
}
