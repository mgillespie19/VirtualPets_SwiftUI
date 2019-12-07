//
//  PetInfo.swift
//  VirtualPets
//
//  Created by Max Gillespie on 12/6/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct PetInfo: View {
    @ObservedObject var viewModel: PetViewModel
    
    var screenHeight = UIScreen.main.bounds.height
    var barWidth = UIScreen.main.bounds.width * 0.9
    
    @State var foodPct: CGFloat = 0
    @State var happinessPct: CGFloat = 0
    
    var body: some View {
        ZStack (alignment: .top) {
            Rectangle()
                .foregroundColor(viewModel.selectedPet.background)
                .frame(height: screenHeight / 2)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Spacer()
                VStack {
                    ProgressBar(barWidth: self.barWidth, barHeight: 50, barPct: $happinessPct)
                        .padding(.bottom)
                    
                    Image(uiImage: viewModel.selectedPet.image)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                
                Spacer()
                
                ProgressBar(barWidth: self.barWidth, barHeight: 25, barPct: $foodPct)
                    .padding(.top)
                Button(action: {
                    self.viewModel.feed()
                    self.updatePercents()
                }, label: {
                    Text("Feed")
                        .frame(width: barWidth, height: 50)
                        .background(Color.white)
                        .cornerRadius(4)
                        .shadow(radius: 2)
                })

                Spacer()

                Button(action: {
                    self.viewModel.play()
                    self.updatePercents()
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
    
    private func updatePercents() {
        self.foodPct = CGFloat(self.viewModel.selectedPet.foodLevel) / 10
        self.happinessPct = CGFloat(self.viewModel.selectedPet.happiness) / 10
    }
}

struct PetInfo_Previews: PreviewProvider {
    static var previews: some View {
        PetInfo(viewModel: PetViewModel())
    }
}
