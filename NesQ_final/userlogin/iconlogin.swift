//
//  iconlogin.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 27/07/2023.
//

import SwiftUI

struct iconlogin: View {
    var body: some View {
        HStack{
            Image("appleid")
            Spacer().frame(width: 20)
            Image("google")
            Spacer().frame(width: 20)
            Image("facebook")
        }
    }
}

struct iconlogin_Previews: PreviewProvider {
    static var previews: some View {
        iconlogin()
    }
}
