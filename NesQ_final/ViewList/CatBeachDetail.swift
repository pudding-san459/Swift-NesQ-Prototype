//
//  CatBeachDetail.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 28/07/2023.
//

import SwiftUI

struct CatBeachDetail: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            ZStack {
                TabView{
                    
                    Home().tabItem {
                        
                        Image(systemName: "house").font(.title)
                    }
                    
                    Text("activity").tabItem {
                        
                        Image(systemName: "message").font(.title)
                    }
                    
                    Text("logo").tabItem {
                        
                        Image(systemName: "megaphone").font(.title)
                    }
                    
                    Text("profile").tabItem {
                        
                        Image(systemName: "person").font(.title)
                    }
                }
            }
        }
    }
        
        struct Home : View{
            @State private var showText = false
            @State private var showB1 = true
            @State private var showB2 = false
            var body: some View{
                NavigationStack {
                    ScrollView {
                        ZStack {
                            VStack {
                                Image("cbs").resizable()
                                    .frame(width: 300, height: 120)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 5).stroke(.black, lineWidth: 2)
                                    }
                                    .shadow(radius: 5)
                                Text("Cat Beach Penang").font(.title).bold()
                                Text("Cat Sanctuary Malaysia").font(.title2)
                                HStack {
                                    Text("Pulau Pinang")
                                }
                                Image("cat").resizable()
                                    .frame(width: 350, height: 200)
                                
                                Divider()
                                Text("About Us")
                                    .font(.title2).foregroundColor(.gray).bold()
                                Text("Love Cats? Please help support the care of rescued cats at Cat Beach Santuary!")
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
        
        
        struct CatBeachDetail_Previews: PreviewProvider {
            static var previews: some View {
                CatBeachDetail()
            }
        }
    }


struct CBViewMore: View {
    var body: some View {
        VStack{
            Text("Under the umbrella of the nonprofit Cat Lovers International Society, our mission is to improve the welfare of cats in Penang and reaching out to communities across the globe. We believe deeply in'think globally, act locally.")
                .foregroundColor(.gray).font(.system(size: 19))
        }.multilineTextAlignment(.leading)
        .padding()
            .offset(y: -25)
    }
}
