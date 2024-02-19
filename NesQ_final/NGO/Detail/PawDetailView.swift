//
//  PawDetailView.swift
//  NGOPROJECT
//
//  Created by STDC_MACBOOK_05 on 27/07/2023.
//

import SwiftUI

struct PawDetailView: View {
    
    var body: some View {
        VStack {
            ZStack {
                Pawdetail()
                
            }
        }
    }
}
    struct Pawdetail : View{
        @State private var showText = false
        @State private var showB1 = true
        @State private var showB2 = false
        var body: some View {
            NavigationStack {
                ScrollView {
                    ZStack {
                        VStack {
                            Image("paws").resizable()
                                .frame(width: 300, height: 120)
                                .overlay {
                                RoundedRectangle(cornerRadius: 15).stroke(.black, lineWidth: 2)
                            }
                            .shadow(radius: 5)
                            Text("Paws Animal Welfare Society").font(.title)
                            Text("Persatuan Kebajikan Haiwan Paws").font(.title2)
                            HStack {
                                Text("Subang, Selangor")
                            }
                            Image("pawspic").resizable()
                                .frame(width: 350, height: 200)
                            Divider()
                            Text("About Us").font(.title2).foregroundColor(.gray).bold()
                            Text("PAWS accepts unwanted pets and stray animals - puppies, adult dogs, kittens and adults cats. We also have hundreds of animals waiting for a forever home").foregroundColor(.gray).font(.system(size: 17))
                            HStack{
                                if showB1{
                                    Button("View More"){
                                        showText.toggle()
                                        showB1.toggle()
                                        showB2.toggle()
                                    }.offset(x: -124)
                                }else if showB2{
                                    Button("View Less"){
                                        showText.toggle()
                                        showB1.toggle()
                                        showB2.toggle()
                                    }.offset(x: -124)
                                }
                            }
                            if showText{
                                PAWViewmore()
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }


struct PawDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PawDetailView()
    }
}


struct PAWViewmore: View {
    var body: some View {
        VStack{
            Text("A safe hewn for furry friends since 1987, our pet shelter provides comfort, nourishment, and love to animals in need. With dedicated staff and warm environment, we strive to find them forever home.").foregroundColor(.gray).font(.system(size: 19))
        }.multilineTextAlignment(.leading)
            .padding()
            .offset(y: -25)
    }
}
