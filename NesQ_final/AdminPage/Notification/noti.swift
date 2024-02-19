//
//  noti.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 03/08/2023.
//

import SwiftUI

struct noti: View {
    var notification: [Noti] = NotiList.notif
    var body: some View {
        NavigationStack {
            List(notification, id: \.id) { noti in
                HStack{
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .cornerRadius(4)
                        .padding(4)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(noti.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                        Text(noti.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                    }
                }
            }
            .navigationTitle("Notification")
        }
    }
}

struct noti_Previews: PreviewProvider {
    static var previews: some View {
        noti()
    }
}
