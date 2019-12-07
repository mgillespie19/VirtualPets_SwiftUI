//
//  ProgressBar.swift
//  VirtualPets
//
//  Created by Max Gillespie on 12/7/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    var barWidth: CGFloat
    var barHeight: CGFloat
    var barPct: CGFloat
    
    var body: some View {
        ZStack (alignment: .leading) {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: barWidth, height: barHeight)
                .opacity(0.1)
                .padding()
            Rectangle()
                .foregroundColor(.black)
                .frame(width: (barWidth * barPct), height: barHeight)
                .padding()
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(barWidth: 380, barHeight: 40, barPct: 0.0)
    }
}
