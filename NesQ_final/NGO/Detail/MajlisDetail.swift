//
//  MajlisDetailView.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 31/07/2023.
//

import SwiftUI

struct MajlisDetai: View {
    @State private var showText = false
    @State private var showB1 = true
    @State private var showB2 = false
        var body: some View {
            NavigationStack {
                ScrollView {
                    ZStack {
                        VStack {
                            Image("shahalam").resizable()
                                .frame(width: 150, height: 120)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 5).stroke(.black, lineWidth: 2)
                                }
                                .shadow(radius: 5)
                            Text("Majlis Bandaraya Shah Alam").font(.title2).bold()
                            Text("Local Authorities").font(.title3)
                            HStack {
                                Text("Selangor")
                            }
                            Image("shahale").resizable()
                                .frame(width: 350, height: 200)
                            
                            Divider()
                            Text("About Us")
                                .font(.title2).foregroundColor(.gray).bold()
                            Text("The Shah Alam City Council is headed by a Datuk Bandar appointed by the Selangor State Government")
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
                                CBViewMore()
                            }
                            
                        }
                        
                    }.padding()
                }
            }
        }
}
struct MajlisDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MajlisDetai()
    }
}

    
struct MajlisDetailMore: View {
    var body: some View {
        VStack{
            Text(" In addition, the mayor also takes on the role of a councillor, and he will be sworn in along with 23 other councilors every 2 years. The council consists of politicians, professionals, academics and corporate leaders.MBSA has 13 departments, 6 divisions and 3 branch offices. ​City Council management consists of the Deputy Mayor, Deputy Secretary and several other directors who lead different portfolios. MBSA also has 1,600 staff who hold about 153 types of posts.")
                .foregroundColor(.gray).font(.system(size: 19))
        }.multilineTextAlignment(.leading)
        .padding()
            .offset(y: -25)
    }
}

