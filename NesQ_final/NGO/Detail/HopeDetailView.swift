//
//  HopeDetailView.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 27/07/2023.
//

import SwiftUI

struct HopeDetailView: View {
    
    
    var body: some View {
        VStack {
            ZStack {
               Hopedetail()
            }
        }
    }
    struct Hopedetail : View{
        @State private var showText = false
        @State private var showB1 = true
        @State private var showB2 = false
        var body: some View{
            NavigationStack {
                ScrollView {
                    ZStack {
                        VStack{
                            Image("HopeLogo").resizable()
                                .frame(width: 300, height: 120)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 5).stroke(.black, lineWidth: 2)
                                }
                                .shadow(radius: 5)
                            Text("Pesatuan Kebajikan HOPE").font(.title)
                            Text("HOPE Worldwide Malaysia").font(.title2)
                            HStack {
                                Text("Kuala Lumpur")
                            }
                            Image("HOPEPIC").resizable()
                                .frame(width:350, height:200)
                            Divider()
                            Text("About Us").font(.title2).foregroundColor(.gray).bold()
                            Text("Our service focus on Health, Food, Children Education and Colunteerism Program").foregroundColor(.gray).font(.system(size:17))
                            HStack{
                                if showB1{
                                    Button("View More"){
                                        showText.toggle()
                                        showB1.toggle()
                                        showB2.toggle()
                                    }.offset(x: -124)
                                }else if showB2{
                                    Button("View Less"){
                                        showText.toggle()
                                        showB1.toggle()
                                        showB2.toggle()
                                    }.offset(x: -124)
                                }
                            }
                            
                            if showText{
                                HOPEViewMore()
                            }
                            
                        }
                    }.padding()
                }
            }
        }
    }
    
    
    
    struct HopeDetailView_Previews: PreviewProvider {
        static var previews: some View {
            HopeDetailView()
        }
    }
}

struct HOPEViewMore: View {
    var body: some View {
        VStack{
            Text("HOPE worldwide Malaysia is an international, nonprofit, non-governmental and non-religious charity organization that changes by harnessing the compassion and commitment of dedicated staff and volunteers to deliver sustainable, high impact, community-based service to the poor and needy.").foregroundColor(.gray).font(.system(size: 19))
        }.multilineTextAlignment(.leading)
                .padding()
                .offset(y: -25)
        }
    }

