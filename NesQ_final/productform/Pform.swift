//
//  fromlist.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct Pform: View {
    @State private var productname = ""
    @State private var phone = ""
    @State private var description = ""
    var body: some View {
        VStack(alignment: .leading){

            Text("Product Name").bold()
            TextField("Product Name", text: $productname)
                .padding().frame(width: 350, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
            Text("Phone:").bold()
            TextField("Phone", text: $phone)
                .padding().frame(width: 350, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
            Group{
                Spacer().frame(height:40)
                Text("Product Description:")
                    .offset(y: -30)
                    .bold()
                TextField("Product Description", text: $description, axis: .vertical)
                    .padding().frame(width: 350, height: 30)
                    .overlay{
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                            .frame(height: 100)
                    }
                    .lineLimit(4 ... 5)
            }
        }
    }
}

struct fromlist_Previews: PreviewProvider {
    static var previews: some View {
        Pform()
    }
}
