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
  func updateUIView(_ uiView: MKMapView, context: Context) {
    let coordinate = CLLocationCoordinate2DMake(34.011286, -116.166868)
    let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    uiView.setRegion(region, animated: true)
  }

  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
