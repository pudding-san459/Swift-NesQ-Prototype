//
//  login.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 26/07/2023.
//

import SwiftUI

struct login: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 180, height: 140)
                    loginform()
                    Spacer().frame(height: 15)
                    Text("Or")
                    iconlogin()
                    Spacer().frame(height: 20)
                    HStack{
                        Text("Don't have an account?")
                        NavigationLink("Sign up"){
                            signup()
                        }
                        
                        Text("now")
                        
                    }
                }
            }
        }
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
