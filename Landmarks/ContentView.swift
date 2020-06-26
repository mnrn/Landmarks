//
//  ContentView.swift
//  Landmarks
//
//  Created by mnrn on 26/06/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        HStack {
          Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
            .font(.subheadline)
          Spacer()
          Text(/*@START_MENU_TOKEN@*/"California"/*@END_MENU_TOKEN@*/)
            .font(.subheadline)
        }
      }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
