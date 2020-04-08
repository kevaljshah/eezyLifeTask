//
//  DoublePlanView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct DoublePlanView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HostView()
                    .shadow(radius: 5)
                    .padding(.trailing, 8)
                PlanView(restImage: "profilePhoto2",
                         restString: "Piano Works",
                         restIcon: "cocktail",
                         restDesc: "Cocktail",
                         locationDesc: "20 Queensbury Road\nSW7 2DR",
                         locationIcon: "location",
                         timeString: "6.00 PM",
                         isAccepted: false)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
                ZStack(alignment: .topLeading) {
                    PlanView(restImage: "profilePhoto4",
                             restString: "Thai Square",
                             restIcon: "food",
                             restDesc: "Thai",
                             locationDesc: "113 Perry Street\nSW7 2DR",
                             locationIcon: "location",
                             timeString: "8.00 PM",
                             isAccepted: false)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .padding(.leading, 8)
                        .padding(.trailing, 8)
                    HStack(spacing: 0) {
                        Image("man-walking")
                            .padding(.leading)
                        Text("10 MINS")
                            .bold()
                            .font(.system(size: 12))
                            .padding(.trailing)
                            .foregroundColor(.gray)
                    }
                    .background(Color.white)
                    .frame(height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 9).stroke(Color.init(.cyan), lineWidth: 2))
                    .padding(.leading, 30)
                    .padding(.top, -15)
                }
                CommentsView()
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
            }
            .padding(.bottom)
        }
    .cornerRadius(20)
    }
}

struct RowView: View {
    
    var image: String
    var text: String
    
    var body: some View {
        HStack {
            Image(image)
            .resizable()
                .frame(width: 10, height: 15, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.gray)
                .padding()
                .frame(width: 20.0, height: 23.0)
            Text(text)
                .aspectRatio(contentMode: .fit)
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct DoublePlanView_Previews: PreviewProvider {
    static var previews: some View {
        DoublePlanView()
    }
}
