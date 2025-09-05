//
//  SearchBarView.swift
//  HDFLIX
//
//  Created by Thanh Dao on 3/9/25.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    @FocusState var isFocused: Bool
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack{
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .frame(width: 44, height: 44)
                    .padding(.leading, 0)
            }
            TextField("Search", text: $text)
                .font(.SF_Pro_Medium(14))
                .foregroundColor(.white)
                .frame(width: 280, height: 44)
                .background(Color.mediumblack)
                .padding(.horizontal)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 2)
                })
                .cornerRadius(10)
                .padding(.trailing, 30)
                .focused($isFocused)
        }
    }
}

#Preview {
    ZStack {
        Color.mediumblack
        SearchBarView(text: .constant(""))
    }
}
