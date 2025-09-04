//
//  SearchBarView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct SearchBarView: View {
    
    var body: some View {
        HStack{
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
                .frame(width: 44, height: 44)
                .padding(.leading, 17)
            TextField("", text: .constant(""), prompt: Text("Search")
                .foregroundColor(.white))
                .font(.SF_Pro_Medium(14))
                .foregroundColor(.white)
                .frame(width: 300, height: 44)
                .background(Color.mediumblack)
                .padding(.horizontal)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 2)
                })
                .cornerRadius(10)
                .padding(.trailing, 17)
        }
    }
}

#Preview {
    ZStack {
        Color.mediumblack
        SearchBarView()
    }
}
