//
//  N_Back_SwiftUIModel.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-09-19.
//

import Foundation

struct N_BackSwiftUIModel {
    private var count : Int
    private var gridSize = 9 // TODO: Ändra
    var Nback : OpaquePointer!
    
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
      
    
    mutating func resetNback() -> [Int32] {
        var indices = [Int32]()
        Nback = create(20, 9, 20, 2)
        
        for i in 0..<20 {
            let index = Int32(i)
            let values = getIndexOf(Nback, index)
            indices.append(values)
            print("Value at index \(index): \(getIndexOf(Nback, index))")
        }
        
        return indices
    }

   
}
