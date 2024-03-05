//
//  MapView.swift
//  diary
//
//  Created by 박윤종 on 3/5/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
        var body: some View {
            Map(coordinateRegion: $region)
        }
}

#Preview {
    MapView()
}
