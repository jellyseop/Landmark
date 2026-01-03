//
//  ImageView.swift
//  Landmarks
//
//  Created by junseopLee on 1/2/26.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(.circle)
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 8)
    }
}

#Preview {
    CircleImage(image: landmarks[0].image)
}
