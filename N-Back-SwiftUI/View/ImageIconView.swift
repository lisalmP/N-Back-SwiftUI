//
//  ImageIconView.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-10-03.
//

import SwiftUI

struct ImageIconView: View {
    
    @EnvironmentObject var theViewModel : N_Back_SwiftUIVM
    
    var body: some View {
        let grid = theViewModel.createGrid()
        let gridSize = theViewModel.gridsize
        let gridCount = Int(sqrt(Double(gridSize)))
        
        VStack {
            
            Text ("Visual n-back") //TODO: Replace with actual number
                .font(.title)
    
            Spacer()
            
            grid[1]
            
           // Start with fixing the loop
           //ForEach(0..<gridCount, id: \.self) { row in
           //             HStack {
           //                 ForEach(0..<gridCount, id: \.self) { col in
           //                     let index = row * gridCount + col
           //                     theViewModel.grid[index]
           //                         .aspectRatio(1, contentMode: .fit)
           //                         .frame(maxWidth: .infinity, maxHeight: .infinity)
           //                 }
           //             }
           //         }
            
            Button(action: {
                // Do something
                
            }){
                Text("Position!")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }
            .padding()
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
    struct ImageIconView_Previews: PreviewProvider {
        static var previews: some View {
            ImageIconView()
        }
    }
}
