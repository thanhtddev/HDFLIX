//
//  PersonalizeView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct LanguageSelectionView: View {
    @State private var selectedLanguage: String = "English"
    @State private var currentPage = 0
    var body: some View {
        ZStack{
            BaseView()
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 89)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Choose your language for the best experience")
                    .font(.SF_Pro_Bold(24))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
                    .frame(height: 50)
                VStack(spacing: 15) {
                    ForEach(LanguageData.languages){ language in
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
                    }
                }
                Spacer()
                HStack{
                    Color.clear
                        .frame(width: 43)
                        .padding(.leading)
                    Spacer()
                    PageIndicator(allPage: 3, currentPage: currentPage)
                    Spacer()
                    Button{
                        
                    }label: {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .frame(width: 43, height: 43)
                            .background(Color.mediumred)
                            .clipShape(Circle())
                            .padding(.trailing)
                    }
                }
                .frame(height: 40)
            }
        }
    }
}

#Preview {
    LanguageSelectionView()
}
