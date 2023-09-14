//
//  ContentView.swift
//  UnlockScreen
//
//  Created by Nien Lam on 9/14/23.
//  Copyright © 2023 Line Break, LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var msgString = "Tap on a Beatle"

    @State var inputSequence = [String]()

    @State var screenIsLocked = true
    
    var body: some View {
        VStack {
            Text(msgString)
                .font(.system(size: 24))
                .padding(.top, 40)
            
            Image("john")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .border(Color.black, width: 4)
                .onTapGesture {
                    print("👉 John was tapped")
                    
                    msgString = "You tapped on John"
                    
                    inputSequence.append("john")
                    
                    processInputSequence()
                }
            
            Image("paul")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .border(Color.black, width: 4)
                .onTapGesture {
                    print("👉 Paul was tapped")
                    
                    msgString = "You tapped on Paul"
                    
                    inputSequence.append("paul")
                    
                    processInputSequence()
                }
            
            Image("ringo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .border(Color.black, width: 4)
                .onTapGesture {
                    print("👉 Ringo was tapped")
                    
                    msgString = "You tapped on Ringo"
                    
                    inputSequence.append("ringo")
                    
                    processInputSequence()
                }
            
            Image("george")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .border(Color.black, width: 4)
                .onTapGesture {
                    print("👉 George was tapped")
                    
                    msgString = "You tapped on George"
                    
                    inputSequence.append("george")
                    
                    processInputSequence()
                }
            
            if screenIsLocked {
                Text("🔒 Locked")
                    .font(.system(size: 24))
                    .padding(.top, 40)
            } else {
                Text("🔓 Unlocked")
                    .font(.system(size: 24))
                    .padding(.top, 40)
            }
        }
        .padding()
    }
    
    func processInputSequence() {
        // Print out input sequence.
        print("🔑 \(inputSequence)")
        
        // TODO: Add logic to check if inputSequence is correct
        //
        //
        // screenIsLocked = false

        // Clear input sequence.
        if inputSequence.count == 4 {
            inputSequence.removeAll()
        }
    }
}

#Preview {
    ContentView()
}
