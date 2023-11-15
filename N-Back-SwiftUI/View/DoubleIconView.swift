//
//  DoubleIconView.swift
//  N-Back-SwiftUI
//
//  Created by Lisa Almstedt on 2023-11-14.
//

import SwiftUI

struct DoubleIconView: View {
    @EnvironmentObject var theViewModel : N_Back_SwiftUIVM
    
    var body: some View {
        let gridSize = theViewModel.theModel.getGridSize()
        let gridCount = Int(sqrt(Double(gridSize)))
        let columns: [GridItem] = Array(repeating: GridItem(), count: gridCount)
        
        VStack {
            
            Text ("VisuaL and Audio n-back") //TODO: Replace with actual number
                .font(.title)
            
            Spacer()
            
            LazyVGrid(columns: columns, spacing:10){
                ForEach(0..<gridSize, id: \.self){ _ in
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1, contentMode: .fit)
                        .foregroundColor(.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 10)
                        )
                }
            }
            .padding()
            
            HStack{
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
                
                Button(action: {
                    // Do something
                    
                }){
                    Text("Sound!")
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                .padding()
            }
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    struct DoubleIconView_Previews: PreviewProvider {
        static var previews: some View {
            DoubleIconView()
        }
    }
}
