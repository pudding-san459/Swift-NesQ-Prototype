//
//  AboutHope.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 27/07/2023.
//

import SwiftUI

struct AboutHope: View {
    var body: some View {
        HStack {
            Image("HopeLogo").resizable()
                .frame(width: 64, height: 64)
                .aspectRatio(contentMode: .fit)
            
            
            Spacer().frame(width: 20)
            VStack {
                Text("HOPE")
                    .font(.title)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text("Persatuan Kebajikan HOPE Worldwide")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                NavigationLink("Show Detail View") {
                    HopeDetailView()
                }
            }
        }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.black, lineWidth: 2)
            )
            .frame(width: 350)
    }
}

struct AboutHope_Previews: PreviewProvider {
    static var previews: some View {
        AboutHope()
    }
}
