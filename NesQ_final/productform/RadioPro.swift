//
//  RadioPro.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 03/08/2023.
//

import SwiftUI

struct RadioPro: View {
    @State var flagA = false
    @State var flagB = false
    @State var flagC = false
    @Environment(\.presentationMode) var presentationMode
    @State private var showingAlert = false
    var body: some View {
        NavigationStack{
            VStack {
                Text("Package").font(.system(size: 35)).bold()
                Spacer().frame(height: 10)
                HStack{
                    Image(systemName: flagA ? "checkmark.circle.fill" : "circle")
                    Text("RM9.99 for 2 Weeks").font(.system(size: 20))
                }
                .frame(width: 300, height: 40, alignment: .center)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.black, lineWidth: 2)
                )
                .onTapGesture {
                    flagA = true
                    flagB = false
                    flagC = false
                }
                HStack{
                    Image(systemName: flagB ? "checkmark.circle.fill" : "circle")
                    Text("RM19.99 for 1 Month").font(.system(size: 20))
                }.frame(width: 300, height: 40, alignment: .center)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.black, lineWidth: 2)
                    )
                
                    .onTapGesture {
                        flagA = false
                        flagB = true
                        flagC = false
                    }
                HStack{
                    Spacer().frame(width: 20)
                    Image(systemName: flagC ? "checkmark.circle.fill" : "circle")
                    Text("RM49.99 for 3 Months").font(.system(size: 20))
                }
                .frame(width: 300, height: 40, alignment: .center)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.black, lineWidth: 2)
                )
                .onTapGesture {
                    flagA = false
                    flagB = false
                    flagC = true
                }
                Spacer().frame(height: 30)
                
                Button(action: {
                    showingAlert = true
                }, label: {
                    Text("Submit")
                        .frame(width: 200, height: 40, alignment: .center)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }).alert(isPresented: $showingAlert) {
                    Alert(title: Text("Form Sent!"), dismissButton: .default(Text("Ok"), action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }))}
                NavigationLink(destination: Main(), isActive: $showingAlert){EmptyView()}
            }
        }
    }
}

struct RadioPro_Previews: PreviewProvider {
    static var previews: some View {
        RadioPro()
    }
}
