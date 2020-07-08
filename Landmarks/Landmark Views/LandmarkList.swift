//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mnrn on 30/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var userData: UserData
  
  var body: some View {
    List {
      Toggle(isOn: $userData.showFavoriteOnly) {
        Text("Favorite only")
      }
      
      ForEach(userData.landmarks) { landmark in
        if !self.userData.showFavoriteOnly || landmark.isFavorite {
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
      }
    }
    .navigationBarTitle(Text("Landmarks"))
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      LandmarkList()
        .environmentObject(UserData())
    }
  }
}
