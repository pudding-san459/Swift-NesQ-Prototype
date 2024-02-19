//
//  Camera.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI

struct Camera: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack{
            if let image = vm.image {
                ZoomableScrollView {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 250, minHeight: 100)
                        .padding()
                }
            } else {
                Image(systemName: "photo.fill")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.6)
                    .frame(maxWidth:250)
                    .padding(.horizontal)
                
            }
            HStack {
                Button {
                    vm.source = .camera
                    vm.showPhotoPicker()
                } label: {
                    Text("Camera")
                        .frame(width: 100, height: 40, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                    
                }
                Button {
                    vm.source = .library
                    vm.showPhotoPicker()
                } label: {
                    Text("Photos")
                        .frame(width: 100, height: 40, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }.sheet(isPresented: $vm.showPicker) {
            ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                .ignoresSafeArea()
        }
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
            .environmentObject(ViewModel())
    }
}
