//
//  ContentView.swift
//  Memorize
//
//  Created by Nikita Kaigorodov on 11.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content:{
            ForEach(0..<4){index in
                HStack(){
                    ForEach(0..<4){ index in
                        CardView(isFaceUp: false)
                    }
                }
            }
        })
        .foregroundColor(.orange)
        .padding()
        .font(.largeTitle)
    }
}


struct CardView: View{
    var isFaceUp: Bool
    var body: some View{
        ZStack(){
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                Text("👻" )
                
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
    
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
