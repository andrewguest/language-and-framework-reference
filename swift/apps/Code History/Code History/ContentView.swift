//
//  ContentView.swift
//  Code History
//
//  Created by Andrew on 10/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.green)
            .multilineTextAlignment(.leading)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
