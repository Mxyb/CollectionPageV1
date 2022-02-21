//
//  SharedDataModel.swift
//  CollectionPageV1
//
//  Created by Max Baker on 17/02/2022.
//

import SwiftUI

class SharedDataModel: ObservableObject{
    
    // Detail Award Data....
    @Published var detailAward: Award?
    @Published var showDetailAward: Bool = false
    
    // matched Geoemtry Effect from Search page...
    @Published var fromSearchPage: Bool = false
    
    // Liked Awards...
    @Published var likedAwards: [Award] = []
    
}
