//
//  profile.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 28/07/2023.
//

import SwiftUI

struct profile: View {
    
    var body: some View {
        NavigationStack{
            
            VStack {
                
                
                Image("user").resizable()
                    .frame(width: 150,height: 150)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle()).frame(width: 160, height: 160)
                    .overlay{
                        Circle()
                            .stroke(.white,lineWidth: 4)
                    }
                    .shadow(radius: 7)
                NavigationLink("Edit Profile"){
                    
                    editProfile()
                }.padding()
                
                
                VStack {
                    //button
                    NavigationLink(destination:ListNGO())
                    {
                        
                        Text("Donate to Save Life")
                        
                            .foregroundColor(.white)
                            .padding()
                            .frame(width:319)
                            .background(Color.black)
                            .cornerRadius(15)
                            .bold()
                        
                        
                    }
                    
                    //button
                    NavigationLink(destination:Dropdown())
                    {
                        
                        Text("Advertisement Query")
                        
                            .foregroundColor(.white)
                            .padding()
                            .frame(width:319)
                            .background(Color.black)
                            .cornerRadius(15)
                            .bold()
                        
                    }
                    
                    //button
                    NavigationLink(destination:EmptyView())
                    {
                        
                        Text("Setting")
                        
                            .foregroundColor(.white)
                            .padding()
                            .frame(width:319)
                            .background(Color.black)
                            .cornerRadius(15)
                            .bold()
                        
                    }
                    //button
                    NavigationLink(destination:EmptyView())
                    {
                        
                        Text("Term & Condition")
                        
                            .foregroundColor(.white)
                            .padding()
                            .frame(width:319)
                            .background(Color.black)
                            .cornerRadius(15)
                            .bold()
                            .multilineTextAlignment(.leading)
                        
                    }
                    //  Spacer()
                    //button
                    NavigationLink(destination:SplashPage())
                    {
                        
                        Text("Sign out")
                        
                            .foregroundColor(.red)
                            .padding()
                            .frame(width:319)
                            .background(Color.white)
                            .cornerRadius(15)
                            .bold()
                        
                    }
                    
                }
            }
        }
        
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
