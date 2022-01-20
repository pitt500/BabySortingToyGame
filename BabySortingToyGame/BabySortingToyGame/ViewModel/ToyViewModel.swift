//
//  ToyViewModel.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

class ToyViewModel: ObservableObject {
    // MARK: - Gesture Properties
    let currentToy = Toy(id: 1, color: .red)
    @Published var currentPosition = initialPosition
    
    // MARK: - Coordinates
    private static let initialPosition = CGPoint(
        x: UIScreen.main.bounds.midX,
        y: UIScreen.main.bounds.maxY - 100
    )
    private var frames: [Int: CGRect] = [:]
    
    // MARK: - Objects in the screen
    var toyContainers = Toy.all
    
    // MARK: - Updates in the screen
    func update(frame: CGRect, for id: Int) {
        frames[id] = frame
    }
    
    func update(dragPosition: CGPoint) {
        currentPosition = dragPosition
    }
    
    func update(isDragged: Bool) {
        if isDragged == false {
            resetPosition()
        }
    }
    
    func resetPosition() {
        currentPosition = ToyViewModel.initialPosition
    }
}
