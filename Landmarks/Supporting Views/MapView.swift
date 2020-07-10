//
//  MapView.swift
//  Landmarks
//
//  Created by mnrn on 29/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
  var coordinate: CLLocationCoordinate2D

  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
  }

  func updateUIView(_ uiView: MKMapView, context: Context) {
    let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    uiView.setRegion(region, animated: true)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: landmarkData[0].locationCoordinate)
  }
}
