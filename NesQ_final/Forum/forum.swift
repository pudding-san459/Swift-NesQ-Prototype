//
//  FPost.swift
//  NESQ
//
//  Created by STDC_MACBOOK_02 on 28/07/2023.
//

import SwiftUI

extension Color{
    static var TwitterBlue : Color = Color(red: 29/255, green: 161/255, blue: 241/255)
}

struct FPost: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    
                    Image("logo").renderingMode(.original)
                        .resizable().frame(width: 45, height: 45)
                    Spacer()
                    Text("Forum").bold()
                    Spacer()
                    NavigationLink(destination: profile(), label: {
                        Image("user").renderingMode(.original)
                            .resizable().renderingMode(.original)
                            .frame(width: 50, height: 50)
                    }).withPressableStyle(scaleAmount: 0.5)
                        .buttonStyle(ButtonPressableStyle())
                }.padding(.trailing, 15)
                    .padding(.leading, 15)
                FeedView(post: content)
            }
        }
    }
}

struct FeedView : View{
    let randomInt = Int.random(in: 0..<5)
    let post: [feed]
    
    var body: some View{
        List(post) { feed in
            VStack {
                
                ForEach(post.shuffled()) { post in
                    
                    PostView(post: post)
                    Divider()
                    let flip = arc4random_uniform(4)
                    
                    if flip == 0 {
                        HStack{
                            
                            Button(action:{}) {
                                Image("ads").resizable()
                                    .frame(width: 350, height: 180)
                            }
                        }
                    }
                    
                }
                .listStyle(PlainListStyle())
                
            }
        }
    }
}

struct PostView : View{
    let post:feed
    var body: some View{
        HStack(alignment: .top){
            Image(post.userPhoto).renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
                .font(.system(size: 55))
                .padding(.top)
                .padding(.trailing, 5)
                .foregroundColor(.TwitterBlue)
            
            VStack(alignment: .leading){
                HStack{
                    Text(post.authorName)
                        .bold()
                        .lineLimit(1)
                    Text("@\(post.authorUsername)•\(post.timestampText)")
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }.padding(.top,5)
                
                Text(post.text)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                
                ForumActionView(post: post)
                    .foregroundColor(.gray)
                    .padding([.top,.bottom],10)
                    .padding(.trailing, 30)
                
            }
        }
    }
}

struct ForumActionView : View{
    let post: feed
    
    var body: some View{
        HStack{
            
            Button(action: {}){
                Image(systemName: "message")
            }
            Text(post.numberOfShare > 0 ?"\(post.numberOfShare)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "arrow.2.squarepath")
            }
            Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "heart")
            }
            Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
}

struct FPost_Previews: PreviewProvider {
    static var previews: some View {
        FPost()
    }
}
