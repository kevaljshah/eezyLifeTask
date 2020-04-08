//
//  CommentsView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct CommentsView: View {
  
    @State var comment: String = ""
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                DottedLine()
                HStack(alignment: .top) {
                    Image("bot_large")
                        .padding()
                    VStack {
                        HStack {
                            Text("Monkee")
                                .bold()
                                .foregroundColor(Color.black.opacity(0.6))
                                .padding()
                            Spacer()
                            Text("5 mins")
                                .foregroundColor(Color.gray.opacity(0.6))
                            .padding()
                        }
                        Text("Kate, Listen I knnow I'm great but I'm just a virtual friend. Maybe you should invite some real ones?")
                            .foregroundColor(Color.black.opacity(0.4))
                        .fixedSize(horizontal: false, vertical: true)
                            .font(.system(size: 14))
                        .padding(.init(arrayLiteral: [.leading, .trailing, .bottom]))
                    }
                    .background(RoundedCorners(color: Color.gray.opacity(0.2), tl: 0, tt: 15, bl: 15, bt: 15))
                    .padding(.top)
                    Image("heart")
                        .frame(alignment: .center)
                        .foregroundColor(.gray)
                        .padding()
                }
                HStack {
                    Spacer()
                    Image("chat")
                    Text("6 Comments")
                        .foregroundColor(.gray)
                    Spacer()
                    Spacer()
                }
                HStack {
                    ZStack(alignment: .top) {
                        Image("profilePhoto4").resizable()
                            .clipShape(Circle())
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .leading)
                            .overlay(Circle().stroke(Color.init(white: 0.9), lineWidth: 3))
                        CheckMarkImage()
                            .padding(.leading, 18)
                    }
                    TextField("   Write your thoughts...", text: $comment)
                        .padding(.init(arrayLiteral: [.trailing, .top, .bottom]))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 1))
                    
                }
                .padding()
            }
        }
        .cornerRadius(20)
        .background(Color.white)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
