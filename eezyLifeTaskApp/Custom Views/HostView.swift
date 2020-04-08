//
//  HostView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct HostView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("profilePhoto3").resizable()
                    .clipShape(Circle())
                    .shadow(radius: 10)
                        .overlay(Circle().stroke(AppColors.primaryColor, lineWidth: 2))
                    .aspectRatio(contentMode: .fit)
                    Image("Bot 2").resizable()
                        .frame(width: 15, height: 15, alignment: .bottomTrailing)
                        .padding(.trailing, 13)
                }
                Text("Nicolas is the host")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
                Image("icon_dots")
                .padding()
                ZStack(alignment: .leading) {
                    ZStack(alignment: .top) {
                        Image("profilePhoto2").resizable()
                            .clipShape(Circle())
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: .leading)
                            .overlay(Circle().stroke(Color.init(white: 0.9), lineWidth: 3))
                        CheckMarkImage()
                    }
                    ZStack(alignment: .top) {
                        Image("profilePhoto4").resizable()
                            .clipShape(Circle())
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: .leading)
                            .overlay(Circle().stroke(Color.init(white: 0.9), lineWidth: 3))
                        CheckMarkImage()
                    }
                    .padding(.leading, 30)
                    ZStack(alignment: .top) {
                        Image("profilePhoto5").resizable()
                            .clipShape(Circle())
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: .leading)
                            .overlay(Circle().stroke(Color.init(white: 0.9), lineWidth: 3))
                        CheckMarkImage()
                    }
                    .padding(.leading, 60)
                }
                .padding(.trailing, 15)
            }
            .padding(.top, 12)
            .padding(.bottom, 12)
            .background(Color.white)
        }
        .cornerRadius(10)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 90, maxHeight: 90, alignment: .trailing)
    }
}

struct CheckMarkImage: View {
    
    var body: some View {
        Image(systemName: "checkmark")
               .foregroundColor(.green)
               .aspectRatio(contentMode: .fit)
               .padding(.top, -3)
    }
}

struct HostView_Previews: PreviewProvider {
    static var previews: some View {
        HostView()
    }
}
