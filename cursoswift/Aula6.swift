//
//  Aula6.swift
//  cursoswift
//
//  Created by Kakidiako Afonso on 15/09/22.
//

import SwiftUI

struct Aula6: View {
    @State private var blue:Double = 0
    @State private var red:Double = 0
    @State private var green:Double = 0
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 100,height: 100)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            SliderView(value: $blue,title: "Blue")
            SliderView(value: $red,title: "Red")
            SliderView(value: $green,title: "Green")
            
        }
        .padding(.horizontal)
    }
}

struct Aula6_Previews: PreviewProvider {
    static var previews: some View {
        Aula6()
    }
}
