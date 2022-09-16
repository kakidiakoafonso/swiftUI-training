//
//  Aula4.swift
//  cursoswift
//
//  Created by Kakidiako Afonso on 15/09/22.
//

import SwiftUI

struct Aula4: View {
    @State private var isHearted: Bool = false
    var body: some View {
        VStack{
            Image("KAKIDIAKO")
                .resizable()
                .cornerRadius(30)
                .padding()
            //                .edgesIgnoringSafeArea(.all)
            HStack{
                Button(action: {
                    self.isHearted.toggle()
                }, label: {
                    Image(systemName: isHearted ? "heart": "heart.fill")
                        .foregroundColor(.red)
                })
                
            }
            Text(isHearted ? "IOS Developer":"Swift Ui is awesome")
                .foregroundColor(.blue)
                .font(.headline)
        }
    }
}

struct Aula4_Previews: PreviewProvider {
    static var previews: some View {
        Aula4()
    }
}
