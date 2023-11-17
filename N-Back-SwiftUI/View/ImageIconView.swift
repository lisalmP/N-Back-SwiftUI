//
//  ImageIconView.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-10-03.
//

import SwiftUI

struct ImageIconView: View {
    @EnvironmentObject var theViewModel: N_Back_SwiftUIVM

    @State private var highlightedIndex: Int = -1
    @State private var timer: Timer?
    @State private var indices: [Int32] = []

    var body: some View {
        let gridSize = theViewModel.gridsize
        let numberOfRows = Int(sqrt(Double(gridSize)))
        let numberOfColumns = gridSize / numberOfRows
        let color: Color
        

        VStack {
            Text("Visual n-back")
                .font(.title)

            Spacer()

            VStack {
                    ForEach(0..<numberOfRows, id: \.self) { row in
                        HStack {
                            ForEach(0..<numberOfColumns, id: \.self) { column in
                                print(
                                let index = row * numberOfColumns + column
                                print("\(index)")
                                if index < theViewModel.grid.count {
                                    let marker = theViewModel.grid[index]
                                    if index == highlightedIndex {
                                        color = Color.gray
                                    } else {
                                        color = Color.blue
                                    }
                                    marker
                                        .foregroundColor(color)
                                        .id(index)
                                } else {
                                    EmptyView()
                                }
                            }
                        }
                    }
                }
            .onAppear {
                theViewModel.createGrid()
            }

            Button(action: {
                // TODO: Do something
            }) {
                Text("Position!")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Button(action: {
                indices = theViewModel.startGame()

                // Start highlighting only if there are indices to highlight
                if !indices.isEmpty {
                    startHighlighting()
                }

            }) {
                Text("Start Game!")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    private func startHighlighting() {
        var currentIndex = 0
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if currentIndex < indices.count {
                highlightedIndex = Int(indices[currentIndex])
                print("\(highlightedIndex)")
  
                currentIndex += 1
            } else {
                timer.invalidate()  // Stop the timer when all indices are highlighted
                highlightedIndex = -1
            }
        }
    }
}



struct ImageIconView_Previews: PreviewProvider {
    static var previews: some View {
        ImageIconView()
    }
}


