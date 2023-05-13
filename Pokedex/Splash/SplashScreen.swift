//
//  SplashScreen.swift
//  Pokedex
//
//  Created by Matteo Gentili on 13/05/23.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isScaled = false
    
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .scaleEffect(isScaled ? 1.0 : 0.5)
            .animation(.easeInOut(duration: 0.8), value: isScaled)
            .onAppear {
                self.isScaled.toggle()
            }
            
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
