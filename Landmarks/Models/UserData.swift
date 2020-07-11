//
//  UserData.swift
//  Landmarks
//
//  Created by mnrn on 01/07/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
  @Published var showFavoritesOnly = false
  @Published var landmarks = landmarkData
  @Published var profile = Profile.default
}
