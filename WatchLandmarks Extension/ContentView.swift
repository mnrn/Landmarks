//
//  ContentView.swift
//  Landmarks
//
//  Created by mnrn on 09/07/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList { WatchLandmarkDetail(landmark: $0) }
      .environmentObject(UserData())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList { WatchLandmarkDetail(landmark: $0) }
      .environmentObject(UserData())
  }
}
