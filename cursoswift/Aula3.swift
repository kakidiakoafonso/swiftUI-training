//
//  Aula3.swift
//  cursoswift
//
//  Created by Kakidiako Afonso on 15/09/22.
//

import SwiftUI

struct Aula3: View {
    var body: some View {
        VStack{
            Image("KAKIDIAKO")
                .resizable()
                .cornerRadius(30)
                .padding()
//                .edgesIgnoringSafeArea(.all)
            Text("Kakidiako Afonso")
                .foregroundColor(.blue)
                .font(.headline)
            Text("IOS Developer")
                .foregroundColor(.blue)
                .font(.headline)
        }
    }
}

struct Aula3_Previews: PreviewProvider {
    static var previews: some View {
        Aula3()
    }
}
