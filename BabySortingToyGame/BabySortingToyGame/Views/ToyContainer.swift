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
    private let regularSize: CGFloat = 100
    private let highlightedSize: CGFloat = 130
    
    var body: some View {
        ZStack{
            Circle()
                .fill(toy.color)
                .frame(width: regularSize, height: regularSize)
            if viewModel.isHighlighted(id: toy.id) {
                Circle()
                    .fill(toy.color)
                    .opacity(0.5)
                    .frame(
                        width: highlightedSize,
                        height: highlightedSize
                    )
            }
        }
            .overlay {
                GeometryReader { proxy -> Color in
                    viewModel.update(
                        frame: proxy.frame(in: .global),
                        for: toy.id
                    )
                    
                    return Color.clear
                }
            }
            .frame(width: highlightedSize, height: highlightedSize)
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
