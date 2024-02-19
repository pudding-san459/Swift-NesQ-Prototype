//
//  AboutPerhilitan.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 01/08/2023.
//

import SwiftUI

struct AboutPerhilitan: View {
    var body: some View {
        HStack {
            Image("PERHILITAN").resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
            
            
            Spacer().frame(width: 20)
            VStack {
                Text("Jabatan Perhilitan")
                    .font(.title2)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text("Peninsular Malaysia")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                NavigationLink("Show Detail View") {
                    PerhilitanDetailView()
                }
            }
        }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.black, lineWidth: 2)
            )
            .frame(width: 350)
    }
}

struct AboutPerhilitan_Previews: PreviewProvider {
    static var previews: some View {
        AboutPerhilitan()
    }
}
