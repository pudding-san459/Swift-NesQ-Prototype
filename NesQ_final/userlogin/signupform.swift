//
//  signupform.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 27/07/2023.
//

import SwiftUI

struct signupform: View {
    
    @State var email = ""
    @State var pass = ""
    @State var name = ""
    @State var conpass = ""
    @State var isRegistered: Bool = false
    @State var alertmessage = ""
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Create Account")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .padding()
                    .offset(x: -20, y: 30)
                TextField("Name", text: $name)
                    .padding().frame(width: 350)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email", text: $email)
                    .padding().frame(width: 350, height: 10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $pass)
                    .padding().frame(width: 350)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm password", text: $conpass)
                    .padding().frame(width: 350, height: 10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer().frame(height: 30)
                Button(action: {
                    if pass == "" || email == "" || name == "" || conpass == ""{
                        alertmessage = "Please fill out eveything"
                        isShowingAlert = true
                    }else if pass == conpass{
                        UserManager.shared.registerUser(email: email, password: pass)
                        isRegistered = true
                    } else {
                        alertmessage = "Password does not match"
                        isShowingAlert = true
                    }
                }, label: {
                    Text("Sign Up")
                        .frame(width: 300, height: 40, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text(alertmessage))}
                .withPressableStyle(scaleAmount: 0.5)
                NavigationLink(destination: Main(), isActive: $isRegistered)
                {
                    EmptyView()
                }
            }
        }
        
    }
}

struct signupform_Previews: PreviewProvider {
    static var previews: some View {
        signupform()
    }
}
