//
//  SearchUnit.swift
//  SearchTest
//
//  Created by junsu on 2024/04/16.
//

import SwiftUI

struct SearchUnit: View {
    @EnvironmentObject var viewModel: SearchViewModel
    @Binding var searchText: String
    var unit: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(viewModel.getPartialTextList(fullText: unit, searchText: searchText), id: \.self) { partialText in
                        Text(partialText.text)
                            .foregroundColor(partialText.color)
                    }
                    Spacer()
                }
                .padding(.vertical, 14)
                Spacer()
            }
        }
    }
}
