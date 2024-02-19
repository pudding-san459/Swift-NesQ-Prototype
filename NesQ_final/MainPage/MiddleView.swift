//
//  MiddleView.swift
//  NESQ
//
//  Created by STDC_MACBOOK_02 on 27/07/2023.
//

import SwiftUI

struct MiddleView : View {
    
    @State var show = false
    
    var body : some View{
        
        ScrollView(.vertical, showsIndicators: false) {
            
            
            VStack(spacing: 20){
                
                VStack(alignment: .leading,spacing: 12){
                    
                    HStack{
                        
                        Text("Recently Post").fontWeight(.heavy)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("More").foregroundColor(.gray)
                        }.withPressableStyle(scaleAmount: 0.5)
                            .buttonStyle(ButtonPressableStyle())
                        
                    }.padding([.top,.bottom], 20)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("monkey").renderingMode(.original)
                            .resizable()
                            .frame(width: 350, height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                    
                    Text("Wild Monkey ").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image(systemName: "map").renderingMode(.original)
                        Text("0.5km").foregroundColor(.gray)
                    }
                }.withPressableStyle(scaleAmount: 0.5)
                    .buttonStyle(ButtonPressableStyle())
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("crocs").renderingMode(.original)
                            .resizable()
                            .frame(width: 350, height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }.withPressableStyle(scaleAmount: 0.5)
                        .buttonStyle(ButtonPressableStyle())
                    
                    Text("Crocs In Fishing Area!!").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image(systemName: "map").renderingMode(.original)
                        Text("2km").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }) {
                        
                        Image("cobra").renderingMode(.original)
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 350, height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }.withPressableStyle(scaleAmount: 0.5)
                        .buttonStyle(ButtonPressableStyle())
                    
                    Text("Snakes Season").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image(systemName: "map").renderingMode(.original)
                        Text("2km").foregroundColor(.gray)
                            
                        Text("Kecamatan Klojen").foregroundColor(.gray)
                    }
                }
            }
            
        }
    }
}
