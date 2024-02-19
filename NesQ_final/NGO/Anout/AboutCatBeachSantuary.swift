//
//  AboutCatBeachSantuary.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 28/07/2023.
//

import SwiftUI

struct AboutCatBeachSantuary: View {
    var body: some View {
        HStack {
            Image("cbs").resizable()
                .frame(width: 90, height: 40)
                .aspectRatio(contentMode: .fit)
            
            
            Spacer().frame(width: 20)
            VStack {
                Text("Cat Beach")
                    .font(.title)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text("Cat Beach Sanctuary")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                NavigationLink("Show Detail View") {
                    CatBeachDetail()
                }
            }
        }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.black, lineWidth: 2)
            )
            .frame(width: 350)
    }
}
    
struct AboutCatBeachSantuary_Previews: PreviewProvider {
    static var previews: some View {
        AboutCatBeachSantuary()
    }
}
