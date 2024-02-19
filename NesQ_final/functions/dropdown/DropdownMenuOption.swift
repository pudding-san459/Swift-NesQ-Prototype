//
//  DropdownMenuOption.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import Foundation

struct DropdownMenuOption: Identifiable, Hashable {
    let id = UUID().uuidString
    let option: String
}

extension DropdownMenuOption {
    static let testSingleMonth: DropdownMenuOption = DropdownMenuOption(option: "Lost Pet")
    static let testAllMonths: [DropdownMenuOption] = [
        DropdownMenuOption(option: "Lost Pet"),
        DropdownMenuOption(option: "Product Ads")
    ]
}
