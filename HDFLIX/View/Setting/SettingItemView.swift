//
//  SettingItemView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 25/8/25.
//

import SwiftUI

struct SettingItemView: View {
    let imageSetting: String
    let titleSetting: String
    let iconSetting: String
    var body: some View {
        HStack {
            Image(systemName: imageSetting)
                .padding()
                .foregroundColor(.white)
                
            Text(titleSetting)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: iconSetting)
                .foregroundColor(.white)
                .padding()
        }
    }
}
#Preview {
    ZStack {
        BaseView()
        SettingItemView(imageSetting: "globe", titleSetting: "Language", iconSetting: "chevron.right")
    }
}
