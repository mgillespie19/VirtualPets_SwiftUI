//
//  PetInfo.swift
//  VirtualPets
//
//  Created by Max Gillespie on 12/6/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct PetInfo: View {
    var screenHeight = UIScreen.main.bounds.height
    var barWidth = UIScreen.main.bounds.width * 0.9
    @State var pct: CGFloat = 0
    @State var feedPct: CGFloat = 0
    @State var playPct: CGFloat = 0
    
    var body: some View {
        ZStack (alignment: .top) {
            Rectangle()
                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                .frame(height: screenHeight / 2)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Spacer()
                VStack {
                    ProgressBar(barWidth: self.barWidth, barHeight: 50, barPct: pct)
                        .padding(.bottom)
                    
                    Image("Dog")
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                
                Spacer()
                
                ProgressBar(barWidth: self.barWidth, barHeight: 25, barPct: feedPct)
                    .padding(.top)
                Button(action: {
                    print("feed")
                }, label: {
                    Text("Feed")
                        .frame(width: barWidth, height: 50)
                        .background(Color.white)
                        .cornerRadius(4)
                        .shadow(radius: 2)
                })
                
                ProgressBar(barWidth: self.barWidth, barHeight: 25, barPct: feedPct)
                    .padding(.top)
                Button(action: {
                    print("play")
                }, label: {
                    Text("Play")
                        .frame(width: barWidth, height: 50)
                        .background(Color.white)
                        .cornerRadius(4)
                        .padding()
                        .shadow(radius: 2)
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        print("Dog")
                    }, label: {
                        Text("Dog")
                            .padding()
                    })
                    Spacer()
                    Button(action: {
                        print("Cat")
                    }, label: {
                        Text("Cat")
                            .padding()
                    })
                    Spacer()
                    Button(action: {
                        print("Parrot")
                    }, label: {
                        Text("Parrot")
                            .padding()
                    })
                    Spacer()
                    Button(action: {
                        print("Fish")
                    }, label: {
                        Text("Fish")
                            .padding()
                    })
                    Spacer()
                }
            }
        }
    }
}

struct PetInfo_Previews: PreviewProvider {
    static var previews: some View {
        PetInfo()
    }
}
