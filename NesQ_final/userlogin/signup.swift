//
//  signup.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 26/07/2023.
//

import SwiftUI

struct signup: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 180, height: 140)
                    signupform()
                    Spacer().frame(height: 15)
                    Text("Or")
                    Group{
                        iconlogin()
                        Spacer().frame(height: 20)
                        HStack{
                            Text("Already have an account?")
                            NavigationLink("Login"){
                                login()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct signup_Previews: PreviewProvider {
    static var previews: some View {
        signup()
    }
}
