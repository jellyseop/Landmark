//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by junseopLee on 1/3/26.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorites",  systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
           
        }
    }
}

#Preview {
    FavoriteButton(
        isSet: .constant(false)
    )
}
