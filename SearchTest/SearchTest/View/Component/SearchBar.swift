//
//  SearchBar.swift
//  SearchTest
//
//  Created by junsu on 2024/04/16.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var isEnabled: Bool = true
    
    var body: some View {
        HStack(spacing: 0) {
            Image("image_icon_search")
                .frame(width: 24, height: 24)
                .padding(.leading, 12)
                .padding(.vertical, 12)
                .padding(.trailing, 8)
            TextField("검색어를 입력하세요 :)", text: $text) {
                hideKeyboard()
            }
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
            
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image("image_icon_search_close")
                        .frame(width: 20, height: 20)
                        .padding(.leading, 12)
                        .padding(.vertical, 14)
                        .padding(.trailing, 14)
                }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1)
        )
    }
    
    /// 키보드 닫기
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
