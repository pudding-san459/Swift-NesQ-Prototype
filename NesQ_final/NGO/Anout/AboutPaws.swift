//
//  AboutPaws.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 27/07/2023.
//

import SwiftUI

struct AboutPaws: View {
    var body: some View {
        VStack {
            HStack {
                Image("paws").resizable()
                    .frame(width: 64, height: 64)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 2)
                    }
                    .shadow(radius: 5)
                Spacer().frame(width: 20)
                VStack {
                    Text("PAWS")
                        .font(.title)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Text("Paws Animal Welfare Society")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    NavigationLink("Show Detail View") {
                        PawDetailView()
                    }
                }
            }.padding()
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 2)
                )
            .frame(width: 350)
        }
            
        
    }
}

struct AboutPaws_Previews: PreviewProvider {
    static var previews: some View {
        AboutPaws()
    }
}
