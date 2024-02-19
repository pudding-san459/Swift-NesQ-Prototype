//
//  Mapcall.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 02/08/2023.
//

import SwiftUI
import MapKit

struct Mapcall: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = ""
    
    var body: some View {
        VStack {
            
            TextField("Search", text: $search)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    localSearchService.search(query: search)
                }
                .padding()
                .autocorrectionDisabled()
            
            
            if localSearchService.landmarks.isEmpty {
                Divider()
            } else {
                LandmarkListView()
            }
            
            Map(coordinateRegion: $localSearchService.region, showsUserLocation: true, annotationItems: localSearchService.landmarks) { landmark in
                
                MapAnnotation(coordinate: landmark.coordinate) {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(localSearchService.landmark == landmark ? .purple: .red)
                        .scaleEffect(localSearchService.landmark == landmark ? 2: 1)
                }
                
            }
            
            Spacer()
        }
    }
}

struct Mapcall_Previews: PreviewProvider {
    static var previews: some View {
        Mapcall()
            .environmentObject(LocalSearchService())
    }
}
