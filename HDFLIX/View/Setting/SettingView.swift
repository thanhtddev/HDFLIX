//
//  SettingView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 25/8/25.
//

import SwiftUI

struct SettingView: View {
    
    @State private var showLanguage = false
    @State private var showData = false
    let languages : [Language]
    
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Text("Setting")
                        .font(.SF_Pro_Bold(30))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .padding()
                    ZStack {
                        LinearGradient(colors: [.lightred, .darkred], startPoint: .topLeading, endPoint: .bottomTrailing)
                        HStack {
                            Spacer()
                            Image("global")
                        }
                        VStack {
                            Text("Community")
                                .font(.SF_Pro_Bold(20))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                            Text("Join our channel for updates & more")
                                .font(.SF_Pro_Medium(15))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .frame(width: 118, height: 40)
                                        .opacity(0.3)
                                    HStack{
                                        Image("discord")
                                        Text("Discord")
                                            .font(.SF_Pro_Medium(15))
                                            .foregroundColor(.white)
                                    }
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .frame(width: 118, height: 40)
                                        .opacity(0.3)
                                    HStack{
                                        Image("tele")
                                        Text("Telegram")
                                            .font(.SF_Pro_Medium(15))
                                            .foregroundColor(.white)
                                    }
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .frame(width: 118, height: 40)
                                        .opacity(0.3)
                                    HStack{
                                        Image("channel")
                                        Text("Channel")
                                            .font(.SF_Pro_Medium(15))
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            
                        }
                    }
                    .frame(width: 390, height: 174)
                    .cornerRadius(10)
                    HStack {
                        Image("xcheck")
                            .padding()
                        Text("Trakt Account")
                            .font(.SF_Pro_Medium(18))
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {}) {
                            Text("Connect")
                                .font(.SF_Pro_Medium(18))
                                .foregroundColor(.red)
                        }
                        .padding()
                    }
                    Button {
                        showLanguage = true
                    } label: {
                        SettingItemView(imageSetting: "globe", titleSetting: "Language", iconSetting: "chevron.right")
                    }
                    .navigationDestination(isPresented: $showLanguage) {
                        LanguageSettingView(languages: languages)
                    }
                    Button {
                        showData = true
                    } label: {
                        SettingItemView(imageSetting: "gear", titleSetting: "Show/Hide Data", iconSetting: "chevron.right")
                    }
                    .navigationDestination(isPresented: $showData) {
                        DataSettingView()
                    }
                    SettingItemView(imageSetting: "book.pages", titleSetting: "Terms & Policy", iconSetting: "chevron.right")
                    SettingItemView(imageSetting: "questionmark.message", titleSetting: "FAQs", iconSetting: "chevron.right")
                    SettingItemView(imageSetting: "hand.thumbsup", titleSetting: "Rate App", iconSetting: "arrow.up.forward")
                    SettingItemView(imageSetting: "arrowshape.turn.up.right", titleSetting: "Share App", iconSetting: "arrow.up.forward")
                }
            }
        }
    }
}
#Preview {
    NavigationStack {
        SettingView(languages: LanguageData.languages)
    }
}
