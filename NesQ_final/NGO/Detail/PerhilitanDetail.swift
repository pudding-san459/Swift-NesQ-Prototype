//
//  PerhilitanDetail.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 01/08/2023.
//

import SwiftUI

struct PerhilitanDetailView: View {
    @State private var showText = false
    @State private var showB1 = true
    @State private var showB2 = false
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Image("PERHILITAN").resizable()
                            .frame(width: 150, height: 120)
                            .overlay {
                                RoundedRectangle(cornerRadius: 5).stroke(.black, lineWidth: 2)
                            }
                            .shadow(radius: 5)
                        Text("Jabatan Perhilitan").font(.title2).bold()
                        Text("Jabatan Perlindungan Kehidupan Liar dan Taman Negara").font(.title3).multilineTextAlignment(.center)
                        HStack {
                            Text("Semenanjung Malaysia")
                        }
                        Image("menteri").resizable()
                            .frame(width: 350, height: 200)
                        
                        Divider()
                        Text("About Us")
                            .font(.title2).foregroundColor(.gray).bold()
                        Text("Wildlife for future generations")
                            .foregroundColor(.gray).font(.system(size: 17))
                        HStack{
                            if showB1{
                                Button("View More"){
                                    showText.toggle()
                                    showB1.toggle()
                                    showB2.toggle()
                                }.offset(x: -124)
                            } else if showB2{
                                Button("View Less"){
                                    showText.toggle()
                                    showB1.toggle()
                                    showB2.toggle()
                                }.offset(x: -124)
                            }
                        }
                        if showText{
                            PerhilitanMoreDetailView()
                        }
                        
                    }
                    
                }.padding()
            }
        }
    }
}
struct PerhilitanDetail_Previews: PreviewProvider {
    static var previews: some View {
        PerhilitanDetailView()
    }
}
struct PerhilitanMoreDetailView: View {
    var body: some View {
        VStack{
            Text("Protect and conserve Protected Areas and the components contained therein including flora and fauna from extinction")
                .foregroundColor(.gray).font(.system(size: 19))
        }.multilineTextAlignment(.leading)
            .padding()
            .offset(y: -25)
    }
}
