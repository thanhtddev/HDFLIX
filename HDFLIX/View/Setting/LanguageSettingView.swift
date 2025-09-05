//
//  LanguageSettingView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct LanguageSettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedLanguage: String = "English"
    let languages: [Language]
    
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    }
                    .frame(width: 44, height: 44)
                    .padding(.leading, 5)
                    Spacer()
                    Text("Language")
                        .font(.SF_Pro_Bold(20))
                        .foregroundColor(.white)
                    Spacer()
                    Color.clear
                        .frame(width: 44, height: 44)
                        .padding(.trailing, 5)
                }
                .padding(.bottom, 28)
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(languages){ language in
                            HStack{
                                Image(language.flag)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .padding(.leading)
                                Text(language.name)
                                    .font(.SF_Pro_Medium(16))
                                    .foregroundColor(.white)
                                Spacer()
                                Image(systemName: selectedLanguage == language.name ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(selectedLanguage == language.name ? .red : .gray)
                                    .onTapGesture {
                                        selectedLanguage = language.name
                                    }
                                    .padding(.trailing)
                                Divider()
                            }
                            .frame(width: 399, height: 46)
                            Divider()
                        }
                    }
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
