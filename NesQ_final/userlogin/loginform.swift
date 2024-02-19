//
//  loginform.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 27/07/2023.
//

import SwiftUI

struct loginform: View {
    
    @State private var email: String = ""
    @State private var pass: String = ""
    @State private var isShowingAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var isAdmin = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Login")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .padding()
                    .offset(x: -100, y: -10)
                
                TextField("Email", text: $email)
                    .padding().frame(width: 350, height: 10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $pass)
                    .padding().frame(width: 350)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    
                    if email == "Nesq" && pass == "nesq"{
                        isLoggedIn = true
                    }else if email == "Admin" && pass == "admin"{
                        isAdmin = true
                    }else if UserManager.shared.authenticateUser(email: email, password: pass) {
                        // Authentication successful
                        isLoggedIn = true
                    } else {
                        // Authentication failed
                        alertMessage = "Invalid credentials. Please try again."
                        isShowingAlert = true
                    }
                    
                },label: {
                    Text("Login")
                        .frame(width: 300, height: 40, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text(alertMessage))}
                .withPressableStyle(scaleAmount: 0.5)
                
                NavigationLink(destination: Main(), isActive: $isLoggedIn){
                    EmptyView()
                }
                NavigationLink(destination: AdminPage(), isActive: $isAdmin){
                    EmptyView()
                }
                
                Spacer().frame(height: 20)
                NavigationLink("Forget password?"){
                    Text("Under construction")
                }
                
            }
        }
    }
}

struct loginform_Previews: PreviewProvider {
    static var previews: some View {
        loginform()
    }
}
