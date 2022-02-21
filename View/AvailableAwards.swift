//
//  AvailableAwards.swift
//  CollectionPageV1
//
//  Created by Max Baker on 17/02/2022.
//

import SwiftUI

struct AvailableAwards: View {
    var body: some View {
        Text("This displays awards that \ncan be unlocked")
            .font(.custom(customFont, size: 30))
    }
}

struct AvailableAwards_Previews: PreviewProvider {
    static var previews: some View {
        AvailableAwards()
    }
}
