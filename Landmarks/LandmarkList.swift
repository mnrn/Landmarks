//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mnrn on 30/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      List(landmarkData) { landmark in
        LandmarkRow(landmark: landmark)
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
