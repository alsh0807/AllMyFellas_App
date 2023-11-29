//
//  SoundManager.swift
//  AllMyFellas
//
//  Created by dgsw8th16 on 11/29/23.
//

import Foundation
import AVKit

class SoundManager {
    static let shared = SoundManager()
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case AllMyFella = "AllMyFellaSE"
    }
    
    enum PlayType: String {
        case Play
        case Stop
    }
    
    func playSound(sound: SoundOption, type: PlayType) {
        guard let path = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else {
            return
        }
        
        if type == .Play {
            do {
                player = try AVAudioPlayer(contentsOf: path)
                player?.numberOfLoops = -1
                player?.prepareToPlay()
                player?.play()
            }
            catch {
                print(error.localizedDescription)
            }
        }
        
        if type == .Stop {
            do {
                player?.stop()
            }
        }
    }
    
}


