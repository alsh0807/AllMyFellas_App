//
//  AMFText.swift
//  AllMyFellas
//
//  Created by dgsw8th16 on 11/29/23.
//

import SwiftUI

struct AnimationProperty {
    var rotation = 0.0
    var xTranslation = 0.0
    var size = 1.0
}


struct AMFText: View {
    @State var totalDuration = 1.0
    var body: some View {
        Text("ALL MY FELLAS")
            .font(.custom("SDSamliphopangcheTTFOutline", size: 40))
            .keyframeAnimator(initialValue: AnimationProperty(),
                              repeating: true) { content, value in
                content
                    .rotationEffect(.degrees(value.rotation))
                    .offset(x: value.xTranslation)
                    .scaleEffect(value.size)
                
            } keyframes: { _ in
                KeyframeTrack(\.rotation) {
                    
                    CubicKeyframe(0, duration: 0.2 * totalDuration)
                    
                    CubicKeyframe(-10, duration: 0.2 * totalDuration)
                    
                    CubicKeyframe(0, duration: 0.2 * totalDuration)
                    
                    CubicKeyframe(-10, duration: 0.2 * totalDuration)
                    
                    CubicKeyframe(0, duration: 0.2 * totalDuration)
                    
                    CubicKeyframe(10, duration: 0.2 * totalDuration)
                    
                    CubicKeyframe(0, duration: 1.0 * totalDuration)
                }
                
                KeyframeTrack(\.size) {
                    
                    CubicKeyframe(2, duration: 0.5 * totalDuration)
                    
                    CubicKeyframe(1.7, duration: 0.5 * totalDuration)
                    
                    CubicKeyframe(1.3, duration: 0.5 * totalDuration)
                    
                    CubicKeyframe(1, duration: 0.5 * totalDuration)
                }
                
                KeyframeTrack(\.xTranslation) {
                    CubicKeyframe(100, duration: 0.5 * totalDuration)
                    
                    CubicKeyframe(30, duration: 0.4 * totalDuration)
                    
                    CubicKeyframe(-90, duration: 0.4 * totalDuration)
                    
                    CubicKeyframe(0, duration: 0.4 * totalDuration)
                }
                
            }
    }
}

#Preview {
    AMFText()
}
