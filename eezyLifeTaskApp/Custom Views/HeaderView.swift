//
//  HeaderView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    @State var times: HeaderRowModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: {
                
            }) {
                 ZStack {
                    if !times.isExpanded {
                        HStack {
                            Text(times.timeString)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(times.fgColor)
                                .padding()
                            Image(times.tempIcon)
                                .foregroundColor(times.fgColor)
                                .accentColor(.black)
                            Text(times.tempString)
                                .font(.footnote)
                                .foregroundColor(times.fgColor)
                            Spacer()
                            Image("+")
                                .frame(width: 30, height: 30, alignment: .center)
                                .background(Color.white)
                                .foregroundColor(times.fgColor)
                                .cornerRadius(.infinity)
                                .padding()
                                .shadow(radius: 9)
                        }
                        .background(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: 40, alignment: .center)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                    } else {
                        VStack(spacing: 0) {
                            HStack {
                                Text(times.timeString)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding()
                                Image(times.tempIcon)
                                    .foregroundColor(.white)
                                    .accentColor(.black)
                                Text(times.tempString)
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 56, maxHeight: 56, alignment: .leading)
                            .background(AppColors.primaryColor)
                            .padding(.bottom)
                        }
                    }
                }
            }.onTapGesture {
                self.times.isExpanded.toggle()
            }
            if times.isExpanded {
                DoublePlanView()
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(times: HeaderRowModel(timeString: "Afternoon", tempIcon: "rainy", tempString: "20 C", fgColor: .gray, isExpanded: true))
    }
}
