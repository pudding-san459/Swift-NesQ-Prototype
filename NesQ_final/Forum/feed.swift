//
//  Feed.swift
//  NESQ
//
//  Created by STDC_MACBOOK_02 on 28/07/2023.
//

import Foundation

struct feed : Identifiable,Hashable{
    let id = UUID()
    let userPhoto: String
    let authorName: String
    let authorUsername: String
    let timestampText : String
    let text: String
    let numberOfShare: Int
    let numberOfComment: Int
    let numberOfLikes: Int
}

let content = [

    
    
    feed(
        userPhoto: "user",
         authorName: "Jane Doe",
         authorUsername: "janedoe27",
         timestampText: "12.30pm",
         text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla accumsan orci sodales bibendum. Vestibulum efficitur dui eu laoreet cursus.",
         numberOfShare: 10,
         numberOfComment: 4,
         numberOfLikes: 6),
    
    
    
    feed(userPhoto: "user",
         authorName: "Hailey",
         authorUsername: "hailey34",
         timestampText: "11.00am",
         text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
         numberOfShare: 2,
         numberOfComment: 4,
         numberOfLikes: 5),
    
    feed(userPhoto: "user",
         authorName: "Ashley",
         authorUsername: "daisy_mom",
         timestampText: "9.30am",
         text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla accumsan orci sodales bibendum. Vestibulum efficitur dui eu laoreet cursus.",
         numberOfShare: 15,
         numberOfComment: 12,
         numberOfLikes: 9),
    
    feed(userPhoto: "user",
         authorName: "Abby",
         authorUsername: "CatMotherAbby",
         timestampText: "8.56pm",
         text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla accumsan orci sodales bibendum. Vestibulum efficitur dui eu laoreet cursus.",
         numberOfShare: 3,
         numberOfComment: 4,
         numberOfLikes: 4),
    
    feed(userPhoto: "user",
         authorName: "Colby",
         authorUsername: "HandsomeCold",
         timestampText: "8.56pm",
         text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla accumsan orci sodales bibendum. Vestibulum efficitur dui eu laoreet cursus.",
         numberOfShare: 3,
         numberOfComment: 4,
         numberOfLikes: 4),
]
