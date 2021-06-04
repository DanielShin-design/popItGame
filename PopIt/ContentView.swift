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
        
        ZStack{
        Image("rainbow")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                PopItButton(popColor: $colorRed)
                PopItButton(popColor: $colorOrange)
                PopItButton(popColor: $colorYellow)
                PopItButton(popColor: $colorGreen)
                PopItButton(popColor: $colorBlue)
                PopItButton(popColor: $colorPurple)
                
                /*
                ForEach (1..<7) { index in
                PopItButton()
                    .blendMode(.multiply)
                }
                 */
            }
            
        }
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct aButton: View {
    
    @State var upAndDown = true
        
    var body: some View {
        
        Image(upAndDown ? "popUp" : "popDown")
            .resizable()
            .frame(width: 70, height: 70, alignment: .center)
            .onTapGesture {
                upAndDown.toggle()
            }
    }
}

struct PopItButton: View {
    @Binding var popColor: Color
    
    var body: some View {
        HStack{
            ForEach (1..<5) { index in
                aButton()
                    .colorMultiply(popColor)
            }
        }
    }
}
