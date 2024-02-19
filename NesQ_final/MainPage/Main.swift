//
//  ContentView.swift
//  NESQ
//
//  Created by STDC_MACBOOK_49 on 25/07/2023.
//

import SwiftUI

struct Main: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(Color.white)
    }
    var body: some View {
        
        TabView{
            
            Home()
                .tabItem {
                Image(systemName: "house")
            }
            
            FPost()
                .tabItem {
                Label("", systemImage: "message")
            }
            

            Dropdown()
                .tabItem {
                Image(systemName: "megaphone")
            }// alert letak + for new post
            
        }.navigationBarBackButtonHidden(true)
    }
}


struct Home : View {
    var body : some View{
        
        NavigationStack {
            VStack(alignment: .center){
                HStack{

                    Image("logo").renderingMode(.original)
                        .resizable().frame(width: 45, height: 45)
                    Spacer()
                    Text("NesQ").bold()
                    Spacer()
                    NavigationLink(destination: profile(), label: {
                        Image("user").renderingMode(.original)
                            .resizable().renderingMode(.original)
                            .frame(width: 50, height: 50)
                    }).withPressableStyle(scaleAmount: 0.5)
                        .buttonStyle(ButtonPressableStyle())
                }
                
                    BottomView()

                
                
                MiddleView()


                
            }.padding()                
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}


