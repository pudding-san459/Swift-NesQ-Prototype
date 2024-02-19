//
//  ViewModal.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 31/07/2023.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var image: UIImage?
    @Published var showPicker = false
    @Published var source: Picker.Source = .library
    
    func showPhotoPicker() {
        if source == .camera {
            if !Picker.checkPermissions() {
                print("There is no camera on this device")
                return
            }
        }
        showPicker = true
    }
}
