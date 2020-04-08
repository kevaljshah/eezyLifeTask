//
//  DottedLine.swift
//  eezyLifeTaskApp
//
//  Created by Keval Shah on 4/8/20.
//  Copyright © 2020 Keval Shah. All rights reserved.
//

import SwiftUI

struct DottedLine: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 1))
            path.addLine(to: CGPoint(x: 500, y: 1))
        }
        .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
        .foregroundColor(Color.gray)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1, maxHeight: 1, alignment: .center)
    }
}

struct DottedLine_Previews: PreviewProvider {
    static var previews: some View {
        DottedLine()
    }
}
