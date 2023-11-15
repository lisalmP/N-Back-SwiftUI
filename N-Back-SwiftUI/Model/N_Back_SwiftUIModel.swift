//
//  N_Back_SwiftUIModel.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-09-19.
//

import Foundation

struct N_BackSwiftUIModel {
    private var count : Int
    private var gridSize = 9

    
    init(count: Int) {
        self.count = count
    }
    func getGridSize() -> Int{
        return gridSize
    }
    
    func getString() -> String{
        return "Hello World"
    }
    
    func getHighScore() -> Int{
        return count
    }
    
    mutating func addScore(){
        count += 1
    }
      
    mutating func resetNback(){
        let Nback = create(20, 9, 20, 2)
        
        
        for i in 1...3 {
            let test:Int32 = Int32(i)
            print("aValue: \(getIndexOf(Nback, test))")
        }
        
    }
   
}
