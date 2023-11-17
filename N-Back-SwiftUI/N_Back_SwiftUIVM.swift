//
//  N_Back_SwiftUIVM.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-09-19.
//

import Foundation
import AVFoundation
//import SwiftUI

class N_Back_SwiftUIVM : ObservableObject  {
    let synthesizer = AVSpeechSynthesizer()
    var theModel : N_BackSwiftUIModel
    @Published var highScore : Int
    @Published var gridsize : Int
    @Published var grid : [MarkerView]
    
    init(){
        theModel = N_BackSwiftUIModel(count: 0)
        highScore = theModel.getHighScore()
        gridsize = 9
        grid = []
    }
    
    func newHighScoreValue(){
        theModel.addScore()
        highScore = theModel.getHighScore()
    }
    
    func soundClick(){
        let theString: String = theModel.getString()
        speech(aString: theString)
    }
    
    func createGrid() {
        grid = (0..<gridsize).map { id in
            MarkerView(color: .blue, id: id)
        }
    }
    func startGame() -> [Int32]{
        let indices = theModel.resetNback()
        return indices
    }


    // IO handling
    
    func speech(aString: String){
        let soundVoice = AVSpeechUtterance(string: aString)
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
        synthesizer.speak(soundVoice)
    }
    
}
