//
//  Dropdown.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct Dropdown: View {
    @State private var birthMonth: DropdownMenuOption? = nil
    @State private var isNext1 = false
    @State private var isNext2 = false
    var body: some View {
        NavigationStack {
            VStack {
                    Text("Advertisment Form")
                        .font(.system(size:35))
                        .bold()
                    DropdownMenu(
                        selectedOption: self.$birthMonth,
                        placeholder: "Select Type of Form",
                        options: DropdownMenuOption.testAllMonths
                    )
                    
                    if (birthMonth?.option ?? "" == "Lost Pet") {
                        FormCall()
                        Button(action: {
                            isNext1 = true
                        }, label: {
                            Text("Next")
                                .frame(width: 200, height: 40, alignment: .center)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        })
                        
                    } else if (birthMonth?.option ?? "" == "Product Ads"){
                        Pcall()
                        Button(action: {
                            isNext2 = true
                        }, label: {
                            Text("Next")
                                .frame(width: 200, height: 40, alignment: .center)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        })
                    }
            }
            NavigationLink(destination: RadioLost(), isActive: $isNext1){
                EmptyView()
            }
            NavigationLink(destination: RadioPro(), isActive: $isNext2){
                EmptyView()
            }

        }
        }
}

struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown()
    }
}
