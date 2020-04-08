//
//  TopView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Button(action: {
                    print("Back")
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
                Text("My Plans")
                    .foregroundColor(Color.white)
                Spacer()
                Button(action: {
                        print("Notifications")
                }) {
                    ZStack(alignment: .bottomTrailing) {
                        Image("notifications")
                            .font(.title)
                        Text(" 3 ")
                            .background(Color.red)
                            .font(.system(size: 12))
                            .cornerRadius(60)
                            .overlay(Circle().stroke(Color.white, lineWidth: 1.5))
                            .padding(.trailing, 3)
                    }
                    .foregroundColor(.white)
                }
                .padding()
            }
            .background(AppColors.primaryColor)
            Rectangle().fill(Color.init(red: 0.4, green: 0.85, blue: 0.9)).frame(minWidth: 0, maxWidth: .infinity, minHeight: 3, maxHeight: 3, alignment: .top)
            Rectangle().fill(Color.black).frame(minWidth: 0, maxWidth: .infinity, minHeight: 3, maxHeight: 3, alignment: .bottom)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
