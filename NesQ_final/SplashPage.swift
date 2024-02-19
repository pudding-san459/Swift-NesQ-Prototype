//
//  SplashPage.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 26/07/2023.
//

import SwiftUI

struct SplashPage: View {
    var body: some View {
        SliderView()
    }
}

struct SliderView: View{
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let images = ["image1", "image2", "image3"]
    
    @State private var ispressedL = false
    @State private var ispressedR = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                TabView(selection:$selection){
                    ForEach(0..<3){ i in
                        Image("\(images[i])")
                            .resizable()
                            .ignoresSafeArea()
                    }
                }.tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .onReceive(timer, perform: {_ in
                        withAnimation{
                            selection = selection < 3 ? selection + 1 : 0
                        }
                    }
                    )
                    .frame(width: 450, height: 440)
                    .offset(y : -90)
                    .ignoresSafeArea()
                
                ZStack{
                    Ellipse()
                        .frame(width: 1200)
                        .offset(y: 490)
                        .foregroundColor(Color("Salmon"))
                    
                    Text("To help a pet in need, give them a safe place indeed")
                        .font(.title2)
                        .frame(width: 300)
                        .offset(x:-10 ,y:200)
                }
                HStack {
                    Button(action: {
                        ispressedL = true
                    }, label: {
                        Text("Login")
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color("lightblue"))
                            .foregroundColor(Color.black)
                            .cornerRadius(15)
                    }).withPressableStyle(scaleAmount: 0.5)
                    NavigationLink(destination: login(), isActive: $ispressedL){
                        EmptyView()
                    }
                    
                    Spacer().frame(width: 10)
                    
                    Button(action: {
                        ispressedR = true
                    }, label: {
                        Text("Sign Up")
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
                        
                    }).withPressableStyle(scaleAmount: 0.5)
                    NavigationLink(destination: signup(), isActive: $ispressedR){
                        EmptyView()
                    }
                    
                }
                .offset(y:330)
                
                
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct SplashPage_Previews: PreviewProvider {
    static var previews: some View {
        SplashPage()
    }
}

