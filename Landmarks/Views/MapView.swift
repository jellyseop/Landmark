//
//  MapView.swift
//  Landmarks
//
//  Created by junseopLee on 1/2/26.
//

import SwiftUI
import MapKit

struct MapView: View {
    var locationCoordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: locationCoordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(locationCoordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
