//
//  ToyContainer.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct ToyContainer: View {
    let toy: Toy
    @ObservedObject var viewModel: ToyViewModel
    private let size: CGFloat = 100
    
    var body: some View {
        Circle()
            .fill(toy.color)
            .frame(width: size, height: size)
            .overlay {
                GeometryReader { proxy -> Color in
                    viewModel.update(
                        frame: proxy.frame(in: .global),
                        for: toy.id
                    )
                    
                    return Color.clear
                }
            }
    }
}

struct ToyContainer_Previews: PreviewProvider {
    static var previews: some View {
        ToyContainer(
            toy: Toy.all.first!,
            viewModel: ToyViewModel()
        )
    }
}
