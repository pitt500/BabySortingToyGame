//
//  BabyToyView.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct BabyToyView: View {
    @StateObject private var viewModel = ToyViewModel()
    let currentToy = Toy(id: 1, color: .red)
    @State var position = CGPoint(x: 100, y: 100)
    let gridItems = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
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
        ZStack {
            LazyVGrid(columns: gridItems, spacing: 100) {
                ForEach(viewModel.toyContainers, id: \.id) { toy in
                    ToyContainer(
                        toy: toy,
                        viewModel: viewModel
                    )
                }
            }
            DraggableToy(
                toy: currentToy,
                position: position,
                gesture: drag
            )
        }
    }
}

struct BabyToyView_Previews: PreviewProvider {
    static var previews: some View {
        BabyToyView()
    }
}
