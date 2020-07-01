//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mnrn on 30/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
  @State var showFavoriteOnly = false
  
  var body: some View {
    NavigationView {
      List(landmarkData) { landmark in
        if !self.showFavoriteOnly || landmark.isFavorite {
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationBarTitle(Text("Landmarks"))
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
