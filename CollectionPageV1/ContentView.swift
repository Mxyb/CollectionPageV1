//
//  ContentView.swift
//  CollectionPageV1
//
//  Created by Max Baker on 17/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var sharedData = SharedDataModel()
    
    var body: some View {
        VStack {
            
            if sharedData.likedAwards.isEmpty{
                
                Group {
                    
                    Image("NoAwards")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .padding(.top,35)
                    
                    Text("No awards yet")
                        .font(.custom(customFont, size: 25))
                        .fontWeight(.semibold)
                    
                }
                
                
            }
            else {
                MainPage()
            }
            
            
        }
        
    }
}

