//
//  SearchViewModel.swift
//  SearchTest
//
//  Created by junsu on 2024/04/16.
//

import Foundation

@MainActor
class SearchViewModel: ObservableObject {
    @Published var searchList: [String] = []

    let deviceList: [String] = [
        "Apple iPhone 11",
        "Apple iPhone 11 Pro",
        "Apple iPhone 11 Pro Max",
        "Apple iPhone 12",
        "Apple iPhone 12 mini",
        "Apple iPhone 12 Pro",
        "Apple iPhone 12 Pro Max",
        "Apple iPhone 13",
        "Apple iPhone 13 mini",
        "Apple iPhone 13 Pro",
        "Apple iPhone 13 Pro Max",
        "Apple iPhone 14",
        "Apple iPhone 14 Plus",
        "Apple iPhone 14 Pro",
        "Apple iPhone 14 Pro Max",
        "Apple iPhone 15",
        "Apple iPhone 15 Plus",
        "Apple iPhone 15 Pro",
        "Apple iPhone 15 Pro Max",
        "Apple iPhone SE 2",
        "Apple iPhone SE 3",
        "Apple iPhone XS",
        "Apple iPhone XS Max",
        "Apple iPad 6",
        "Apple iPad 7",
        "Apple iPad 8",
        "Apple iPad 9",
        "Apple iPad 10",
        "Apple Air 3",
        "Apple Air 4",
        "Apple Air 5",
        "Apple iPad mini 5",
        "Apple iPad mini 6",
        "Apple iPad Pro 11",
        "Apple iPad Pro 11 2nd",
        "Apple iPad Pro 11 3rd",
        "Apple iPad Pro 11 4th",
        "Apple iPad Pro 12.9 3rd",
        "Apple iPad Pro 12.9 4th",
        "Apple iPad Pro 12.9 5th",
        "Apple iPad Pro 12.9 6th",
        "Apple MacBook Air 13 2018",
        "Apple MacBook Air 13 2019",
        "Apple MacBook Air 13 2020",
        "Apple MacBook Air 15 M2 2023",
        "Apple MacBook Air M1 2020",
        "Apple MacBook Air M2 2022",
        "Apple MacBook Pro 2018",
        "Apple MacBook Pro 2019",
        "Apple MacBook Pro 2020",
        "Apple MacBook Pro 2020 M1",
        "Apple MacBook Pro 2021 M1",
        "Apple MacBook Pro 2022 M2",
        "Apple MacBook Pro 2023 M2",
        "Apple MacBook Pro 2023 M3",
        "Apple iMac 2019",
        "Apple iMac 2020",
        "Apple iMac 2021",
        "Apple iMac 2023",
        "Asus Phone",
        "Asus Tablet",
        "Asus Laptop",
        "Asus PC",
        "Blackberry Phone",
        "Blackberry Tablet",
        "Blackberry Laptop",
        "Blackberry PC",
        "HTC Phone",
        "HTC Tablet",
        "HTC Laptop",
        "HTC PC",
        "Huawei Phone",
        "Huawei Tablet",
        "Huawei Laptop",
        "Huawei PC",
        "LG G7 ThinQ",
        "LG G8 ThinQ",
        "LG Q51",
        "LG Q52",
        "LG Q61",
        "LG Q7",
        "LG Q70",
        "LG Q7 Plus",
        "LG Q8 2018",
        "LG Q9",
        "LG Q92",
        "LG Q9 One",
        "LG V35 ThinQ",
        "LG V40 ThinQ",
        "LG V50 ThinQ",
        "LG V50S ThinQ",
        "LG Velvet",
        "LG Wing",
        "LG X2",
        "LG X2 2019",
        "LG X4",
        "LG X4 Plus",
        "LG X4 2019",
        "LG X5 2018",
        "LG X6",
        "LG G Pad 4",
        "LG G Pad 5",
        "LG Ultra Tab",
        "LG All new gram 2018",
        "LG gram 2019",
        "LG gram 2020",
        "LG gram 2021",
        "LG gram 2022",
        "LG gram 2023",
        "LG gram 2in1 2019",
        "LG gram 2in1 2020",
        "LG gram style",
        "LG ultra gear 15",
        "LG ultra gear 17",
        "LG PC",
        "Nokia Phone",
        "Nokia Tablet",
        "Nokia Laptop",
        "Nokia PC",
        "Pantech Phone",
        "Pantech Tablet",
        "Pantech Laptop",
        "Pantech PC",
        "Samsung Galaxy A10",
        "Samsung Galaxy A12",
        "Samsung Galaxy A13",
        "Samsung Galaxy A21S",
        "Samsung Galaxy A23",
        "Samsung Galaxy A24",
        "Samsung Galaxy A30",
        "Samsung Galaxy A31",
        "Samsung Galaxy A32",
        "Samsung Galaxy A33 5G",
        "Samsung Galaxy A34 5G",
        "Samsung Galaxy A40",
        "Samsung Galaxy A42 5G",
        "Samsung Galaxy A50",
        "Samsung Galaxy A51 5G",
        "Samsung Galaxy A53 5G",
        "Samsung Galaxy A6 2018",
        "Samsung Galaxy A7 2018",
        "Samsung Galaxy A80",
        "Samsung Galaxy A8 2018",
        "Samsung Galaxy A9 2018",
        "Samsung Galaxy A90 5G",
        "Samsung Galaxy A9 Pro",
        "Samsung Galaxy A Quantum",
        "Samsung Galaxy J2 Pro",
        "Samsung Galaxy J3 2017",
        "Samsung Galaxy J4 Plus",
        "Samsung Galaxy J5 2017",
        "Samsung Galaxy J6",
        "Samsung Galaxy J7 2017",
        "Samsung Galaxy M12",
        "Samsung Galaxy M20",
        "Samsung Galaxy Note9",
        "Samsung Galaxy Note10",
        "Samsung Galaxy Note10 Plus",
        "Samsung Galaxy Note20",
        "Samsung Galaxy Note20 Ultra",
        "Samsung Galaxy Quantum2",
        "Samsung Galaxy Quantum3",
        "Samsung Galaxy Quantum4",
        "Samsung Galaxy S9",
        "Samsung Galaxy S9 Plus",
        "Samsung Galaxy S10",
        "Samsung Galaxy S10 5G",
        "Samsung Galaxy S10 Lite",
        "Samsung Galaxy S10 Plus",
        "Samsung Galaxy S20",
        "Samsung Galaxy S20 Plus",
        "Samsung Galaxy S20 Ultra",
        "Samsung Galaxy S21",
        "Samsung Galaxy S21 Plus",
        "Samsung Galaxy S21 Ultra",
        "Samsung Galaxy S22",
        "Samsung Galaxy S22 Plus",
        "Samsung Galaxy S22 Ultra",
        "Samsung Galaxy S23",
        "Samsung Galaxy S23 Plus",
        "Samsung Galaxy S23 Ultra",
        "Samsung Galaxy Wide3",
        "Samsung Galaxy Wide5",
        "Samsung Galaxy Z Flip",
        "Samsung Galaxy Z Flip 3",
        "Samsung Galaxy Z Flip 4",
        "Samsung Galaxy Z Flip 5",
        "Samsung Galaxy Z Flip 5G",
        "Samsung Galaxy Z Fold",
        "Samsung Galaxy Z Fold 2",
        "Samsung Galaxy Z Fold 3",
        "Samsung Galaxy Z Fold 4",
        "Samsung Galaxy Z Fold 5",
        "Samsung Tab A7",
        "Samsung Tab A7 Lite",
        "Samsung Tab A8",
        "Samsung Tab A8.0 2019",
        "Samsung Tab S4",
        "Samsung Tab S6",
        "Samsung Tab S6 Lite",
        "Samsung Tab S7",
        "Samsung Tab S7 FE",
        "Samsung Tab S7 Plus",
        "Samsung Tab 8",
        "Samsung Tab 8 Plus",
        "Samsung Tab 8 Ultra",
        "Samsung Tab S9",
        "Samsung Tab S9 Plus",
        "Samsung Tab S9 Ultra",
        "Samsung Galaxy Book",
        "Samsung Galaxy Book 2 Pro",
        "Samsung Galaxy Book 2 Pro 360",
        "Samsung Galaxy Book 3 Pro",
        "Samsung Galaxy Book 3 Pro 360",
        "Samsung Galaxy Book 3 Ultra",
        "Samsung Galaxy Book Flex",
        "Samsung Galaxy Book Flex 2",
        "Samsung Galaxy Book Flex 2 5G",
        "Samsung Galaxy Book Ion",
        "Samsung Galaxy Book Ion 2",
        "Samsung Galaxy Book Odyssey",
        "Samsung Galaxy Book Pro",
        "Samsung Galaxy Book Pro 360",
        "Samsung Galaxy Book S",
        "Samsung PC",
        "Sony Phone",
        "Sony Tablet",
        "Sony Laptop",
        "Sony PC"
    ]

    func search(text: String) {
        searchList = deviceList.filter {
            $0.uppercased().replacingOccurrences(of: " ", with: "").contains(text.uppercased().replacingOccurrences(of: " ", with: ""))
        }
    }
    
    func getPartialTextList(fullText: String, searchText: String) -> [PartialText] {
        var partialTextList: [PartialText] = []
        let highlightedTextArray = fullText.uppercased().components(separatedBy: searchText.uppercased())
        
        if !highlightedTextArray.isEmpty {
            let ranges = fullText.uppercased().ranges(of: searchText.uppercased())
            var lettercount = 0
            
            for i in 0..<highlightedTextArray.count {
                
                if !highlightedTextArray[i].isEmpty {
                    partialTextList.append(PartialText(text: fullText.substring(from: lettercount, to: lettercount + highlightedTextArray[i].count - 1), color: .black))
                }
                lettercount += highlightedTextArray[i].count
                
                if !(i == highlightedTextArray.count - 1) {
                    if !fullText[ranges[i]].isEmpty {
                        partialTextList.append(PartialText(text: String(fullText[ranges[i]]), color: .blue))
                    }
                    lettercount += fullText[ranges[i]].count
                }
            }
        }
        
        return partialTextList
    }
}
