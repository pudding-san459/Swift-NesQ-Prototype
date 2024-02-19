//
//  Form.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 27/07/2023.
//

import SwiftUI

struct LFForm: View{
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer().frame(height: 20)
                lost_form()
                
                Spacer().frame(height: 60)
                
                Camera()
                    .environmentObject(vm)
                    .onAppear {
                        UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                    }
                
                Spacer().frame(height: 20)
                
                
            }
        }
    }
}

struct LFForm_Previews: PreviewProvider {
    static var previews: some View {
        LFForm()
    }
}

