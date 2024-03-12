//
//  MapView.swift
//  Landmarks
//
//  Created by Steven Poirot on 1/31/24.
//

import SwiftUI
import MapKit

struct MapView: View 
{   var coordinate:  CLLocationCoordinate2D
    
    var body: some View
    {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion
    {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview 
{   MapView(coordinate: CLLocationCoordinate2D(latitude: 61.15,     longitude: -149.98))
}
