//
//  DraggableToy.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct DraggableToy<Draggable: Gesture>: View {
    let position: CGPoint
    let gesture: Draggable
    
    private let size: CGFloat = 100
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: size, height: size)
            .position(position)
            .gesture(gesture)
    }
}

struct DraggableToy_Previews: PreviewProvider {
    static var previews: some View {
        DraggableToy(
            position: .zero,
            gesture: DragGesture()
        )
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
