//
//  PageIndicator.swift
//  HDFLIX
//
//  Created by Thanh Dao on 28/8/25.
//

import SwiftUI

struct PageIndicator: View {
    
    @State private var currentPage = 0
    @State private var naviagteToHome = false
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    
    var body: some View {
        ZStack {
            BaseView()
            VStack {
                TabView(selection: $currentPage) {
                    LanguageSelectionView()
                        .tag(0)
                    GenreSelectionView()
                        .tag(1)
                    PersonalizeView()
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                HStack {
                    if currentPage > 0 {
                        Button(action: {withAnimation { currentPage -= 1}}) {
                            Text("Back")
                                .font(.SF_Pro_Medium(14))
                                .foregroundStyle(.white)
                                .padding(.leading)
                        }
                        
                    } else {
                        Spacer().frame(width: 44, height: 44)
                    }
                    Spacer()
                    HStack(spacing: 6) {
                        ForEach(0..<3) { index in
                            Capsule()
                                .fill(index == currentPage ? Color.red : Color.gray)
                                .frame(width: index == currentPage ? 20 : 6, height: 6)
                                .animation(.easeInOut, value: currentPage)
                        }
                    }
                    Spacer()
                    Button {
                        withAnimation {
                            if currentPage < 2 {
                                currentPage += 1
                            } else {
                                isFirstLaunch = false
                                naviagteToHome = true
                            }
                        }
                    } label: {
                        Image(systemName: currentPage == 2 ? "checkmark" : "chevron.right")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundStyle(.white)
                            .frame(width: 44, height: 44)
                            .background(Color.mediumred)
                            .clipShape(Circle())
                            .padding(.trailing)
                    }
                    .navigationDestination(isPresented: $naviagteToHome) {
                        MainView(movies: movieData.movies, actors: ActorData.actors, languages: LanguageData.languages)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    PageIndicator()
}
