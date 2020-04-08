//
//  PlanView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct PlanView: View {
    
    var restImage: String
    var restString: String
    var restIcon: String
    var restDesc: String
    var locationDesc: String
    var locationIcon: String
    var timeString: String
    @State var isAccepted: Bool
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                DottedLine()
                HStack {
                    Text(restString)
                        .font(.title)
                        .bold()
                        .padding(.leading, 10)
                    Spacer()
                    Text(timeString)
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.trailing, 20)
                }
                .padding(.top)
                HStack(alignment: .center) {
                    Image(restImage).resizable()
                        .frame(width: 180, height: 140)
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading)
                        .padding(.trailing)
                    VStack(alignment: .leading, spacing: 0.0) {
                        RowView(image: restIcon, text: restDesc)
                        RowView(image: locationIcon, text: locationDesc)
                        
                        if !isAccepted {
                            Button(action: {
                                self.isAccepted.toggle()
                                }) {
                                    HStack {
                                        Spacer()
                                        Text("Accept")
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                    .padding()
                                    .frame(height: 34.0)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                }
                                .frame(height: 30)
                                .padding(.init(arrayLiteral: [.top, .leading, .trailing]))
                            Button(action: {
                                    print("Decline")
                                }) {
                                    HStack {
                                        Spacer()
                                        Text("Decline")
                                            .font(.footnote)
                                        .foregroundColor(.gray)
                                        Spacer()
                                    }
                                    .padding()
                                    .frame(height: 34.0)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                }
                            .padding(.init(arrayLiteral: [.top, .leading, .trailing]))
                        } else {
                            Button(action: {
                                print("Accepted")
                            }) {
                                HStack {
                                    Spacer()
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.green)
                                    Text("Accepted")
                                        .font(.footnote)
                                        .foregroundColor(.green)
                                    Spacer()
                                }
                                .padding()
                                .frame(height: 34.0)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
                            }
                            .frame(height: 30)
                            .padding(.init(arrayLiteral: [.top, .leading, .trailing]))
                        }
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .center)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 200, alignment: .leading)
            }
            .cornerRadius(20)
            .background(Color.white)
        }
    }
}

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView(restImage: "profilePhoto2", restString: "Piano Works", restIcon: "cocktail", restDesc: "Cocktail", locationDesc: "20 Queensbry\nSW7 2DR", locationIcon: "location", timeString: "6.00 PM", isAccepted: true)
    }
}
