//
//  ActionIconView.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-10-03.
//

import SwiftUI

struct ActionIconView: View {
    @EnvironmentObject var theViewModel : N_Back_SwiftUIVM
    var body: some View {
        
        
        NavigationView{
            VStack(alignment: .center) {
                
                Text("Welcome to N-back")
                    .font(.largeTitle)
                    .padding(30)
                Spacer()
                
                Text("choose your game:")
                    .padding(20)
                    .bold()
                
                VStack{
                    HStack(spacing: 10){
                        NavigationLink(destination: SoundIconView()){
                            HStack {
                                Image(systemName: "speaker.wave.3.fill")
                                    .imageScale(.large)
                                Text("Sound")
                            }
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(40)
                            
                            
                        }
                        NavigationLink(destination: ImageIconView()){
                            HStack {
                                
                                Image(systemName: "eye")
                                    .imageScale(.large)
                                Text("Image")
                            }
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(40)
                        }
                    }
                    
                    NavigationLink(destination: DoubleIconView()){
                        HStack {
                            Image(systemName: "speaker.wave.3.fill")
                                .imageScale(.large)
                            Text("Sound and Image")
                            Image(systemName: "eye")
                                .imageScale(.large)
                        }
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(40)
                    
                }
                    }
                }
                Spacer()
            }
        }
        


struct ActionIconView_Previews: PreviewProvider {
    static var previews: some View {
        ActionIconView()
            .environmentObject(N_Back_SwiftUIVM())
    }
}
