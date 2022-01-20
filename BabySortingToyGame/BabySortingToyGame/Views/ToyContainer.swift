//
//  ToyContainer.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct ToyContainer: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .overlay {
                GeometryReader { proxy -> Color in
                    let frame = proxy.frame(in: .global)
                    
                    return Color.clear
                }
            }
    }
}

struct ToyContainer_Previews: PreviewProvider {
    static var previews: some View {
        ToyContainer()
    }
}
