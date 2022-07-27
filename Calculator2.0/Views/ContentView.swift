//
//  ContentView.swift
//  Calculator2.0
//
//  Created by Divyansh Dwivedi on 27/07/22.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.pink.opacity(0.3), .purple.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            KeyView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
