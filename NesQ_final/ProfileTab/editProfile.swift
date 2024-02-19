//
//  editProfile.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 28/07/2023.
//

import SwiftUI

struct editProfile: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var isSubscribed: Bool = false
    @State private var isShowingAlert = false
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    Image("user")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height:150)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.gray, lineWidth: 3)
                        }
                        .padding(20)
                    Image(systemName: "pencil.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height:35)
                        .foregroundColor(.black)
                        .padding(.top, 100)
                        .padding(.leading, 90)
                    
                    
                }
                Form {
                    
                    Section(header: Text("Personal Information")) {
                        
                        //personal info
                        TextField("Name", text: $name)
                        TextField("Email", text: $email)
                        TextField("Phone Number", text: $phone)
                        
                    }
                    
                    
                    Section{
                        HStack{
                            Section {
                                Spacer()
                                Button("Submit") {
                                    isShowingAlert = true
                                }
                                Spacer()
                            }
                        }
                    }
                    
                    
                    //pop up messsage box
                    .alert(isPresented: $isShowingAlert) {
                        Alert(
                            title: Text("Profile Updated"),
                            message: Text(""),
                            dismissButton: .default(Text("OK"))
                        )
                        
                    }
                    
                }
                
                
            }
        }
        
    }
    }

struct editProfile_Previews: PreviewProvider {
    static var previews: some View {
        editProfile()
    }
}
