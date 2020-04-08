//
//  CalendarView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
    var days = ["M", "T", "W", "T", "F", "S", "S"]
    let pageCount: Int = 5
    @State var currentIndex: Int = 0
    
    @GestureState private var translation: CGFloat = 0
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                GeometryReader { geometry in
                    HStack(spacing: 7.7) {
                        ForEach(1..<32) { i in
                            DateView(day: self.days[(i-1)%7], date: i, isSelected: false, selectedIndex: 0, hasEvent: false)
                        }
                    }
                    .padding(.leading, 10)
                    .frame(width: geometry.size.width, height: 150, alignment: .leading)
                    .offset(x: -CGFloat(self.currentIndex) * geometry.size.width)
                    .offset(x: self.translation)
                    .animation(.interactiveSpring())
                    .gesture(
                        DragGesture().updating(self.$translation) { value, state, _ in
                            state = value.translation.width
                        }.onEnded { value in
                            let offset = value.translation.width / geometry.size.width
                            let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                            self.currentIndex = min(max(Int(newIndex), 0), self.pageCount - 1)
                        }
                    )
                }.frame(width: 420, height: 150, alignment: .leading)
                Divider()
                HStack {
                    Text("Mon Jul 1, 2019")
                        .foregroundColor(.gray)
                        .bold()
                    Spacer()
                    Text("London, UK")
                         .padding()
                        .foregroundColor(.gray)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                }
                .padding()
            }
            .background(Color.white)
        }
    }
}

struct DateView: View {
    var day: String = "M"
    var date: Int = 01
    @State var isSelected: Bool
    @State var selectedIndex: Int
    var hasEvent: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 0) {
                Text(day)
                Button(action: {
                    self.isSelected.toggle()
                    self.selectedIndex = self.date
                }) {
                    Text("\(date)")
                    .fixedSize(horizontal: true, vertical: false)
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                }
                .padding()
                .background((self.date-1)%7 == selectedIndex ? AppColors.primaryColor : AppColors.primaryColor.opacity(0.4))
                .mask(Circle())
                .frame(width: 50, height: 50, alignment: .center)
                if hasEvent {
                    Circle()
                    .frame(width: 5, height: 5, alignment: .center)
                    .background(Color.gray)
                }
            }
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
