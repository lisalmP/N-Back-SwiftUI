//
//  MarkerView.swift
//  N-Back-SwiftUI
//
//  Created by Lisa Almstedt on 2023-11-15.
//

import SwiftUI

struct MarkerView: View {
    let color: Color
    let id : Int
    
    var body: some View {
        
        VStack{
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
}

struct MarkerView_Previews: PreviewProvider {
    static var previews: some View {
        MarkerView(color : .blue, id: 1)
    }
}
