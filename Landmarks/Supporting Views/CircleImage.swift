//
//  CircleImage.swift
//  Landmarks
//
//  Created by mnrn on 27/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
  var image: Image
  var shadowRadius: CGFloat = 10
  
  var body: some View {
    image
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: shadowRadius)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage(image: Image("turtlerock"))
  }
}
