//
//  CategoryItem.swift
//  Landmarks
//
//  Created by junseopLee on 1/5/26.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark;
    
    var body: some View {
        VStack {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(
        landmark: ModelData().landmarks[0]
    )
}
