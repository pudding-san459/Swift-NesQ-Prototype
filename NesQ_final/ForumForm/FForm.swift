//
//  FForm.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct FForm: View {
    @StateObject var vm = ViewModel()
    @Environment(\.presentationMode) var presentationMode
    @State private var showingAlert = false
    var body: some View {
        NavigationStack{
            VStack{
                Text("Report Form")
                    .font(.system(size:35))
                    .bold()
                Spacer().frame(height: 20)
                
                TextForm()
                
                Spacer().frame(height: 50)
                Camera().environmentObject(vm)
                    .onAppear {
                        UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                    }
                
                Spacer().frame(height: 20)
                
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
struct FForm_Previews: PreviewProvider {
    static var previews: some View {
        FForm()
    }
}
