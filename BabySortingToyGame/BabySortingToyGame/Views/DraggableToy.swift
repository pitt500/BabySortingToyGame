//
//  DraggableToy.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct DraggableToy: View {
    private let size: CGFloat = 100
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: size, height: size)
    }
}

struct DraggableToy_Previews: PreviewProvider {
    static var previews: some View {
        DraggableToy()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
