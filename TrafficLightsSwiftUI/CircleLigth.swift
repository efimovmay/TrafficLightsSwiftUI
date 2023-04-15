//
//  CircleLigth.swift
//  TrafficLightsSwiftUI
//
//  Created by Aleksey Efimov on 14.04.2023.
//

import SwiftUI

struct CircleLigth: View {
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct CircleLigth_Previews: PreviewProvider {
    static var previews: some View {
        CircleLigth()
    }
}
