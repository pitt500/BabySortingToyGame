//
//  BabyToyView.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct BabyToyView: View {
    let currentToy = Toy(id: 1, color: .red)
    @State var position = CGPoint(x: 100, y: 100)
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { state in
                position = state.location
            }
            .onEnded { state in
                position = CGPoint(x: 100, y: 100)
            }
    }
    
    var body: some View {
        DraggableToy(
            toy: currentToy,
            position: position,
            gesture: drag
        )
    }
}

struct BabyToyView_Previews: PreviewProvider {
    static var previews: some View {
        BabyToyView()
    }
}
