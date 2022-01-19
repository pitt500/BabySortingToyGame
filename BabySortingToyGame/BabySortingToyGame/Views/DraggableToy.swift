//
//  DraggableToy.swift
//  BabySortingToyGame
//
//  Created by Pedro Rojas on 19/01/22.
//

import SwiftUI

struct DraggableToy: View {
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
    }
}

struct DraggableToy_Previews: PreviewProvider {
    static var previews: some View {
        DraggableToy()
    }
}
