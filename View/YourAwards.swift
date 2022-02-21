//
//  YourAwards.swift
//  CollectionPageV1
//
//  Created by Max Baker on 17/02/2022.
//

import SwiftUI

struct YourAwards: View {
    
    @EnvironmentObject var sharedData: SharedDataModel
    

    
    var body: some View {
        
        NavigationView {
        
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    HStack {
                        
                        Text("Your Awards")
                            .font(.custom(customFont, size: 28))
                            
                        
                        Spacer()
                        
                        
                    }
                    
                    // Checking if Your Awards is empty (FATAL ERROR HERE)
                    if sharedData.likedAwards.isEmpty {
                        
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
                        // Displaying Awards...
                        VStack(spacing: 15){
                            
                            // For Designing...
                            ForEach(sharedData.likedAwards){award in
                                
                                HStack(spacing: 0){
                                    
                                    CardView(award: award)
                                }
                            }
                        }
                        .padding(.top,25)
                        .padding(.horizontal)
                    }
                    
                
        
        
      
    }
            }
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
            
                Color("HomeBG")
                    .ignoresSafeArea()
            )
            }
}

    @ViewBuilder
    func CardView(award: Award) -> some View {
        
        HStack(spacing: 15) {
            
            Image(award.awardImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text(award.title)
                    .font(.custom(customFont, size: 18))
                    .lineLimit(1)
                
                Text(award.subtitle)
                    .font(.custom(customFont, size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Green"))
                
                Text("Type: \(award.type.rawValue)")
                    .font(.custom(customFont, size: 13))
                    .foregroundColor(.gray)
    
            }
            
        }
        .padding(.horizontal,10)
        .padding(.vertical,10)
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(
        
            Color.white
                .cornerRadius(10)
        )
        
    }







}

struct YourAwards_Previews: PreviewProvider {
    static var previews: some View {
        YourAwards()
    }
}
