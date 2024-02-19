//
//  Pfull.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct Pfull: View {
    @StateObject var vm = ViewModel()
    @State var flagA = false
    @State var flagB = false
    @State var flagC = false
    var body: some View {
        NavigationStack{
                VStack{
                    Spacer().frame(height: 20)
                    Pform()
                    
                    Spacer().frame(height: 50)
                    
                    Camera().environmentObject(vm)
                        .onAppear {
                            UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                        }
                    Spacer().frame(height: 20)
                    
                    }
            }
        }
}

struct Pfull_Previews: PreviewProvider {
    static var previews: some View {
        Pfull()
    }
}
