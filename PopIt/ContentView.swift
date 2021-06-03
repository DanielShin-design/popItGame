//
//  ContentView.swift
//  PopIt
//
//  Created by Dan-Mini on 2021/06/03.
//

import SwiftUI

struct ContentView: View {
    
    @State var colorRed = Color.red
    @State var colorOrange = Color.orange
    @State var colorYellow = Color.yellow
    @State var colorGreen = Color.green
    @State var colorBlue = Color.blue
    @State var colorPurple = Color.purple
    
    var body: some View {
        
        VStack{
            PopItButton(popColor: $colorRed)
            PopItButton(popColor: $colorOrange)
            PopItButton(popColor: $colorYellow)
            PopItButton(popColor: $colorGreen)
            PopItButton(popColor: $colorBlue)
            PopItButton(popColor: $colorPurple)
             
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct PopItButton: View {
    
    @State var upAndDown = true
    @Binding var popColor: Color
    
    var body: some View {
        HStack{
            ForEach (1..<5) { index in
                Button(action: {
                    upAndDown.toggle()
                }, label: {
                    Image(upAndDown ? "popUp" : "popDown")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .colorMultiply(popColor)
                })
            }
        }
    }
}
