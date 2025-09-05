//
//  SearchResultGridView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 5/9/25.
//

import SwiftUI

struct SearchResultGridView: View {
    
    let results: [MultiSearchResult]
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        VStack{
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(results) { result in
                        SearchResultGridItem(item: result)
                    }
                }
            }
        }
    }
}
