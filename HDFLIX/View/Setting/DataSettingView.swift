//
//  DataSettingView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct DataSettingView: View {
    
    @State private var companyEnabled = false
    @State private var networkEnabled = false
    @State private var actorEnabled = false
    @State private var showDataEnabled = false
    @State private var featuredEnabled = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    }
                    .frame(width: 44, height: 44)
                    .padding(.leading, 5)
                    Spacer()
                    Text("Show/Hide Data")
                        .font(.SF_Pro_Bold(20))
                        .foregroundColor(.white)
                    Spacer()
                    Color.clear
                        .frame(width: 44, height: 44)
                        .padding(.trailing, 5)
                }
                DataItemView(title: "Company", isOn: $companyEnabled)
                
                DataItemView(title: "Network", isOn: $networkEnabled)
                
                DataItemView(title: "Top Actor", isOn: $actorEnabled)
                
                Divider()
                DataItemView(title: "Show Data from Trakt", isOn: $showDataEnabled)
                Spacer()
                if showDataEnabled {
                    VStack{
                        DataItemView(title: "Featured Lists", isOn: $featuredEnabled)
                        DataItemView(title: "Popular Movies", isOn: $featuredEnabled)
                        DataItemView(title: "Popular TV Shows", isOn: $featuredEnabled)
                        DataItemView(title: "Recommendations", isOn: $featuredEnabled)
                        DataItemView(title: "Streaming Charts", isOn: $featuredEnabled)
                        DataItemView(title: "Anticipated", isOn: $featuredEnabled)
                        DataItemView(title: "Favorited", isOn: $featuredEnabled)
                        DataItemView(title: "Wacthed", isOn: $featuredEnabled)
                        DataItemView(title: "Collected", isOn: $featuredEnabled)
                    }
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DataSettingView()
}
