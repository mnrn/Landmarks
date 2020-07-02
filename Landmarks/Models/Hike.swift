//
//  Hike.swift
//  Landmarks
//
//  Created by mnrn on 02/07/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct Hike: Codable, Hashable, Identifiable {
  var name: String
  var id: Int
  var distance: Double
  var difficulty: Int
  var observations: [Observation]
  
  static var formatter = LengthFormatter()
  
  var distanceText: String {
    return Hike.formatter
      .string(fromValue: distance, unit: .kilometer)
  }
  
  struct Observation: Codable, Hashable {
    var distanceFromStart: Double
    
    var elevation: Range<Double>
    var pace: Range<Double>
    var heartRate: Range<Double>
  }
}
