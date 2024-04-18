//
//  ContentView.swift
//  SearchTest
//
//  Created by junsu on 2024/04/16.
//

import SwiftUI

struct SearchView: View {
    @StateObject var viewModel = SearchViewModel()
    @State var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Divider()
                .overlay(.gray)
                .padding(.top, 4)
                .padding(.bottom, 24)
            
            SearchBar(text: $text)
                .padding(.bottom, 8)
            
            if (viewModel.searchList.count >= 25) {
                HStack(alignment: .top, spacing: 0) {
                    Text("검색결과가 많습니다.")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal, 14)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(8)
                .padding(.top, 8)
                .padding(.bottom, 8)
            }
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(viewModel.searchList, id: \.self) { unit in
                        SearchUnit(searchText: $text, unit: unit)
                            .environmentObject(viewModel)
                    }
                    if viewModel.searchList.isEmpty, !text.isEmpty {
                        Text("검색 결과가 없습니다.")
                            .foregroundColor(.black)
                            .padding(.vertical, 14)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal, 24)
        .background(.white)
        .preferredColorScheme(.light)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear() {
            viewModel.search(text: text)
        }
        .onChange(of: text) { oldValue, newValue in
            viewModel.search(text: newValue)
        }
    }
}
