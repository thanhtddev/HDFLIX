//
//  SearchView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct SearchView: View {
    
    @State var text: String = ""
    @FocusState var isFocused: Bool
    let movies: [Movie]
    let results: [MultiSearchResult]
    
    var body: some View {
        ZStack {
            Color.mediumblack.edgesIgnoringSafeArea(.all)
            VStack {
                SearchBarView(text: $text, isFocused: _isFocused)
                if text.isEmpty {
                    SuggestSearchView(movies: movies)
                } else {
                    SearchResultGridView(results: results)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
