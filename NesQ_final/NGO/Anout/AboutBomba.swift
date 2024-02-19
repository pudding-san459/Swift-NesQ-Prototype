//
//  AboutBomba.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 01/08/2023.
//

import SwiftUI

struct AboutBomba: View {
    var body: some View {
        HStack {
            Image("bomba").resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
            
            
            Spacer().frame(width: 20)
            VStack {
                Text("Jabatan Bomba dan Penyelamat Malaysia")
                    .font(.title2)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text("Bahagian Operasi Kebombaan dan Penyelamat")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                NavigationLink("Show Detail View") {
                    BombaDetail()
                }
            }
        }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.black, lineWidth: 2)
            )
            .frame(width: 350)
    }
}

struct AboutBomba_Previews: PreviewProvider {
    static var previews: some View {
        AboutBomba()
    }
}
