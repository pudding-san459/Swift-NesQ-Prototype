//
//  AboutMajlis.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 31/07/2023.
//

import SwiftUI

struct AboutMajlis: View {
    var body: some View {
            HStack {
                Image("shahalam").resizable()
                    .frame(width: 90, height: 80)
                    .aspectRatio(contentMode: .fit)
                
                
                Spacer().frame(width: 20)
                VStack {
                    Text("Majlis Bandaraya Shah Alam")
                        .font(.title)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Text("Local Authorities")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    NavigationLink("Show Detail View") {
                        MajlisDetai()
                    }
                }
            }.padding()
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 2)
                )
                .frame(width: 350)
        }
    }

struct AboutMajlis_Previews: PreviewProvider {
    static var previews: some View {
        AboutMajlis()
    }
}
