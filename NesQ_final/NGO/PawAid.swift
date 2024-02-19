//
//  PawAid.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct PawAid: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    AboutMajlis()
                    AboutBomba()
                    AboutPerhilitan()
                }
            }.navigationTitle("PawAid")
        }.padding()

    }
}

struct PawAid_Previews: PreviewProvider {
    static var previews: some View {
        PawAid()
    }
}
