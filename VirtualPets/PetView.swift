//
//  ContentView.swift
//  VirtualPets
//
//  Created by Max Gillespie on 12/6/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct PetView: View {
    
    var body: some View {
        VStack {
            PetInfo(viewModel: PetViewModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetView()
    }
}
