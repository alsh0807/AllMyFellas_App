//
//  AMFView.swift
//  AllMyFellas
//
//  Created by dgsw8th16 on 11/29/23.
//

import SwiftUI


struct AMFView: View {
    let soundManager = SoundManager.shared
    var body: some View {
        ZStack {
            
            Color("FellaMint")
                .ignoresSafeArea()
            
            VStack {
                AMFText()
                    .foregroundStyle(Color(.label))
                    .onAppear {
                        soundManager.playSound(sound: .AllMyFella, type: .Play)
                    }
                    .onDisappear {
                        soundManager.playSound(sound: .AllMyFella, type: .Stop)
                    }
                
               
                
            }
        }
        
    }
}

#Preview {
    AMFView()
}
