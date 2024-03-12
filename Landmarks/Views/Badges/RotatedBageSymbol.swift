//
//  RotatedBageSymbol.swift
//  Landmarks
//
//  Created by Steven Poirot on 3/9/24.
//

import SwiftUI

struct RotatedBageSymbol: View 
{
    let angle: Angle
    
    var body: some View
    {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBageSymbol(angle: Angle(degrees:5))
}
