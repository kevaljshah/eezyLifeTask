//
//  ContentView.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/7/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI
import Combine

class ListDataSource: ObservableObject {
    var willChange = PassthroughSubject<Void, Never>()
    
    var headerRowModels = [HeaderRowModel]() {
        willSet { willChange.send() }
    }
    
    init() {
        headerRowModels.append(HeaderRowModel(timeString: "Morning", tempIcon: "sunny", tempString: "20 C", fgColor: Color.gray, isExpanded: false))
        headerRowModels.append(HeaderRowModel(timeString: "Noon", tempIcon: "sunny", tempString: "20 C", fgColor: Color.gray, isExpanded: false))
        headerRowModels.append(HeaderRowModel(timeString: "Afternoon", tempIcon: "sunny", tempString: "20 C", fgColor: Color.gray, isExpanded: false))
        headerRowModels.append(HeaderRowModel(timeString: "Evening", tempIcon: "rainy", tempString: "18 C", fgColor: Color.gray, isExpanded: false))
        headerRowModels.append(HeaderRowModel(timeString: "Night", tempIcon: "rainy", tempString: "16 C", fgColor: Color.gray, isExpanded: false))
    }
}

struct ContentView: View {
    
    @State var times = ListDataSource()
 
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                TopView()
                CalendarView()
                ZStack {
                    List(times.headerRowModels) { time in
                        HeaderView(times: time)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                    }
                }
                .padding(.leading, -12)
                .padding(.trailing, -12)
            }
        }
    }
}

struct HeaderRowModel: Identifiable {
    var id = UUID().uuidString
    var timeString: String
    var tempIcon: String
    var tempString: String
    var fgColor: Color
    var isExpanded: Bool
}

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.backgroundColor = .cyan
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
