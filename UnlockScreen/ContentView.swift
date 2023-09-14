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

    @State var inputPattern = [String]()
    
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
                    
                    inputPattern.append("john")
                    
                    if inputPattern.count == 5 {
                        inputPattern.removeAll()
                    }
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

                    inputPattern.append("paul")
                    
                    if inputPattern.count == 5 {
                        inputPattern.removeAll()
                    }
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

                    inputPattern.append("ringo")
                    
                    if inputPattern.count == 5 {
                        inputPattern.removeAll()
                    }
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

                    inputPattern.append("george")
                    
                    if inputPattern.count == 5 {
                        inputPattern.removeAll()
                    }
                }
            
            Text(inputPattern.description)
                .padding(.top, 40)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
