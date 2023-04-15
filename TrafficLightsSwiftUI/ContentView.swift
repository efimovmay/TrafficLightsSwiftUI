//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Aleksey Efimov on 14.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var actionBottonText = "START"
    
    private enum CurrentLight{
        case red, orange, green
    }

    @State private var currentLight = CurrentLight.red
    
    @State private var greenLigthOpacity = 0.3
    @State private var orangeLigthOpacity = 0.3
    @State private var redLigthOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleLigth()
                    .foregroundColor(.red)
                    .opacity(redLigthOpacity)

                CircleLigth()
                    .foregroundColor(.orange)
                    .opacity(orangeLigthOpacity)

                CircleLigth()
                    .foregroundColor(.green)
                    .opacity(greenLigthOpacity)
                
                Spacer()
                Button(action: { actionBottonPressed() }) {
                    Text(actionBottonText)
                        .padding()
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 2)
                            .background(Color.blue.cornerRadius(20))
                        )
                }
            }
            .padding()
        }
    }
    
    private func actionBottonPressed() {
        actionBottonText = "NEXT"
        
        switch currentLight {
        case .red:
            greenLigthOpacity = 0.3
            redLigthOpacity = 1
            currentLight.self = .orange
        case .orange:
            redLigthOpacity = 0.3
            orangeLigthOpacity = 1
            currentLight.self = .green
        case .green:
            orangeLigthOpacity = 0.3
            greenLigthOpacity = 1
            currentLight.self = .red
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
