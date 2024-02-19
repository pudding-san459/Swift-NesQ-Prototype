//
//  BottomView.swift
//  NESQ
//
//  Created by STDC_MACBOOK_02 on 27/07/2023.
//

import SwiftUI

struct BottomView : View {
    @State private var pawaid = false
    @State private var petcare  = false
    @State private var commaware = false
    
    var body : some View{
        
        NavigationStack {
            VStack{
                
                
    //            ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 35){
                        
                        
                        Button(action: {
                                petcare = true
                        }) {
                                
                            VStack(spacing: 8){
                                    
                                Image("vet")
                                    .resizable().renderingMode(.original)
                                    .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                
                                Text("PetCare+").foregroundColor(.gray)
                                    .lineLimit(1)
                            }
                        }.withPressableStyle(scaleAmount: 0.5)
                            .buttonStyle(ButtonPressableStyle())
                            
                        Button(action: {
                                commaware = true
                        }) {
                                
                            VStack(spacing: 8){
                                    
                                Image("report").renderingMode(.original)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                Text("CommAware").foregroundColor(.gray)
                                    .lineLimit(1)
                            }
                        }.withPressableStyle(scaleAmount: 0.5)
                            .buttonStyle(ButtonPressableStyle())
                        
                        Button(action: {
                                pawaid = true
                        }) {
                                
                            VStack(spacing: 8){
                                    
                                Image("ngo").renderingMode(.original)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                Text("PawAid").foregroundColor(.gray)
                            }
                        }.withPressableStyle(scaleAmount: 0.5)
                            .buttonStyle(ButtonPressableStyle())
                        
                        
                        
                    }
                }
            .padding([.top,.bottom], 40)
            
            NavigationLink(destination: PawAid(), isActive: $pawaid){EmptyView()}
            
            NavigationLink(destination: FFormCall(), isActive: $commaware){EmptyView()}
            
            NavigationLink(destination: Mapcall().environmentObject(LocalSearchService()), isActive: $petcare){EmptyView()}
        }
//        }
    }
}

    

    

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
