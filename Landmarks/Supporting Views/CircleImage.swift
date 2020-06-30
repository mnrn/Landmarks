//
//  CircleImage.swift
//  Landmarks
//
//  Created by mnrn on 27/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
  var body: some View {
    Image( /*@START_MENU_TOKEN@*/"turtlerock" /*@END_MENU_TOKEN@*/)
      .clipShape(Circle())
      .overlay(
        Circle().stroke(Color.white, lineWidth: 4)
      )
      .shadow(radius: 10)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage()
  }
}
