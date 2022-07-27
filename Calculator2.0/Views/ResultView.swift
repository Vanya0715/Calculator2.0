//
//  ResultView.swift
//  Calculator2.0
//
//  Created by Divyansh Dwivedi on 27/07/22.
//

import SwiftUI

struct ResultView: View {
    @State private var changeColor = false
    @State private var offset: CGFloat = 0
    @State private var blur: CGFloat = 5
    
    @State var value : String

    var body: some View {
        HStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(changeColor ? Color("num") : Color.clear)
                .scaleEffect(changeColor ? 1.5 : 1.0)
                .frame(width: 350, height: 280, alignment:.center)
                .animation(Animation.easeInOut.speed(0.17).repeatForever(), value: offset).onAppear {
                            self.blur = 20
                        self.changeColor.toggle()
                    }
                .overlay(
                    Text(value)
                        .bold()
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                        )
        }.padding()
        }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(value: "0")
    }
}
