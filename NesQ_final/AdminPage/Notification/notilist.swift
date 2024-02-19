//
//  notilist.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 03/08/2023.
//

import Foundation

struct Noti: Identifiable{
    let id = UUID()
    let title: String
    let description: String
}

struct NotiList {
    
    static let notif = [
        Noti(title: "Alert",description: "Corcodile near village"),
        
        Noti(title: "Alert",description: "Wild Monkeys"),
        
        Noti(title: "Alert",description: "Wild Dogs"),

              
        Noti(title: "Alert",description: "Elephant on the loose"),

        
        Noti(title: "Alert",description: "Tiger spotted"),

        
        Noti(title: "Alert",description: "Wild cats is too much"),

        
        Noti(title: "Alert",description: "Wild Animal is disturbing the community"),

        
        Noti(title: "Alert",description: "Wild Boars"),

        
        Noti(title: "Alert",description: "Cats need adopted"),
  
        
        Noti(title: "Alert",description: "Help Us tak care of wild animals"),

    ]
}

