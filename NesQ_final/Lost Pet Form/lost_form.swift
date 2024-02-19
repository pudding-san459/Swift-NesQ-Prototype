//
//  lost_form.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 31/07/2023.
//

import SwiftUI

struct lost_form: View {
    @State private var petname = ""
    @State private var age = ""
    @State private var colour = ""
    @State private var breed = ""
    @State private var location = ""
    @State private var phone = ""
    @State private var description = ""
    var body: some View {
        VStack(alignment: .leading){

            Text("Pet Name:").bold()
            TextField("Pet Name", text: $petname)
                .padding().frame(width: 320, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
                
            Text("Age:").bold()
            TextField("Age", text: $age)
                .padding().frame(width: 320, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
            
            Text("Colour:").bold()
            TextField("Colour", text: $colour)
                .padding().frame(width: 320, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
            
//            Text("Breed:")
//            TextField("Breed", text: $breed)
//                .padding().frame(width: 350, height: 30)
//                .overlay{
//                    RoundedRectangle(cornerRadius: 12)
//                        .stroke(Color.black, lineWidth: 1)
//                }
            
            Group{
                Text("Phone:").bold()
                TextField("Phone", text: $phone)
                    .padding().frame(width: 320, height: 30)
                    .overlay{
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                    }
                
            }
            Group{
                Spacer().frame(height:40)
                Text("Description:").bold()
                    .offset(y: -30)
                TextField("Description", text: $description, axis: .vertical)
                    .padding().frame(width: 320, height: 30)
                    .overlay{
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                            .frame(height: 100)
                    }
                    .lineLimit(4 ... 5)
            }
        }
    }
}

struct lost_form_Previews: PreviewProvider {
    static var previews: some View {
        lost_form()
    }
}
