//
//  Form.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct TextForm: View {
    @State private var name = ""
    @State private var age = ""
    @State private var location = ""
    @State private var phone = ""
    @State private var description = ""
    var body: some View {
        VStack(alignment: .leading){

            Text("Name:").bold()
            TextField("Name", text: $name)
                .padding().frame(width: 350, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
            Text("Phone:").bold()
            TextField("Phone", text: $phone)
                .padding().frame(width: 350, height: 30)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 1)
                }
           
            

            
            
            Group{
                
                Text("Report:").bold()
                TextField("Title", text: $age)
                    .padding().frame(width: 350, height: 30)
                    .overlay{
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                    }
                Text("Location:").bold()
                TextField("Location", text: $location)
                    .padding().frame(width: 350, height: 30)
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
                    .padding().frame(width: 350, height: 30)
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

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        TextForm()
    }
}
