//
//  Aula5.swift
//  cursoswift
//
//  Created by Kakidiako Afonso on 15/09/22.
//

import SwiftUI

struct Aula5: View {
    private var climate:[String] = ["moon.fill","cloud.rain.fill","sun.min.fill"]
    @State private var numbers:[Int] = [0,1,2]
    @State private var credit = 1000
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text("Swift UI Slots")
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                }
                .scaleEffect(2)
                Spacer()
                Text("Credits \(credit)")
                    .foregroundColor(Color.black)
                    .padding(.all,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                Spacer()
                
                HStack{
                    Image(systemName: climate[numbers[0]])
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 60,height: 50)
                        .padding()
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    Image(systemName: climate[numbers[1]])
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 60,height: 50)
                        .padding()
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                    Spacer()
                    
                    Image(systemName: climate[numbers[2]])
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 60,height: 50)
                        .padding()
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                    
                }
                .padding(.horizontal,10)
                Spacer()
                Button(action: {
                    self.numbers[0] = Int.random(in: 0...2)
                    self.numbers[1] = Int.random(in: 0...2)
                    self.numbers[2] = Int.random(in: 0...2)
                    
                    if(self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2])
                    {
                        self.credit += 150
                    }
                    else {
                        self.credit -= 20
                    }
                    
                }, label: {
                    Text("Spin")
                        .foregroundColor(.white)
                })
//                .padding(.all,12)
                .frame(width: 200,height: 50)
                .background(.red)
                .cornerRadius(10)
                Spacer()
                
                
            }
            
            
        }
    }
}

struct Aula5_Previews: PreviewProvider {
    static var previews: some View {
        Aula5()
    }
}
