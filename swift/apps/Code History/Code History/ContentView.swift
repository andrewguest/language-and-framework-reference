//
//  ContentView.swift
//  Code History
//
//  Created by Andrew on 10/28/23.
//

import SwiftUI

let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

struct ContentView: View {
    var body: some View {
        ZStack {
            // The safe areas are the very top and very bottom of the screen.
            // This allows the entire screen to be this color
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("What was the first computer bug?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                    Button(action: { print("Tapped on Choice 1") }, label: {
                        Text("Ant")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(.cyan, width: 4)
                    })
                    Button(action: { print("Tapped on Choice 2") }, label: {
                        Text("Beetle")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(.cyan, width: 4)
                    })
                    Button(action: { print("Tapped on Choice 3") }, label: {
                        Text("Moth")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(.cyan, width: 4)
                    })
                    Button(action: { print("Tapped on Choice 4") }, label: {
                        Text("Fly")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(.cyan, width: 4)
                    })
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
