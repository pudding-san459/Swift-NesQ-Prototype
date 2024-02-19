//
//  ListNGO.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 31/07/2023.
//

import SwiftUI

struct ListNGO: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    AboutHope()
                    AboutCatBeachSantuary()
                    AboutPaws()
                }
            }.navigationTitle("Engagement")

        }.padding()
            
    }
}

struct ListNGO_Previews: PreviewProvider {
    static var previews: some View {
        ListNGO()
    }
}
