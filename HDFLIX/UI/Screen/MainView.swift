//
//  MainView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 15/8/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ReelView()
                .tabItem {
                    Image(systemName: "film")
                    Text("Reel")
                }
            ListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("My List")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Setting")
                }
        }
        .accentColor(.white)
    }
}
#Preview {
    MainView()
}
