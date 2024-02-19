//
//  FloatingButton.swift
//  NESQ
//
//  Created by STDC_MACBOOK_02 on 01/08/2023.
//

import SwiftUI

struct FloatingButton: View {
    
    @State var showButtonItem1 = false
    @State var showButtonItem2 = false
    @State var showButtonItem3 = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                    
                VStack{
                        Spacer()
                        
                            if showButtonItem1{
                                Button(action: {
                                    
                                }, label: {
                                    ButtonItem(icon: "bubble.left.fill")
                                })
                                    
                            }
                            if showButtonItem2{
                                Button(action: {
                                    
                                }, label: {
                                    ButtonItem(icon: "square.and.pencil")
                                })
                            }
                            //if showButtonItem3{
                            //    ButtonItem(icon: "bubble.left.fill")
                            //}
                            
                            
                            
                            Button(action: {
                                self.showButton()
                                
                            }){
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 65, height: 65)
                                    .foregroundColor(Color("DarkSalmon"))
                                    .shadow(color:.gray,radius: 0.2, x: 1, y: 1)
                            }
                        Spacer().frame(height: 10)
                        
                }
            }
        }
        }
    func showButton(){
        
        withAnimation{
            showButtonItem3.toggle()
        }
        
        showButtonItem3.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute:{
            
            showButtonItem2.toggle()
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute:{
            
            showButtonItem1.toggle()
        })
        
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}


struct ButtonItem: View {
    
    var icon : String
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color("DarkSalmon"))
                .frame(width: 40, height: 40)
            Image(systemName:icon)
                .imageScale(.large)
                .foregroundColor(.white)
        }
        .shadow(color:.gray,radius: 0.2, x: 1, y: 1)
        .transition(.move(edge: .trailing))
    }
}
