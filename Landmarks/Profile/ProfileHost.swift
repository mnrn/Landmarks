//
//  ProfileHost.swift
//  Landmarks
//
//  Created by mnrn on 07/07/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
  @State var draftProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      ProfileSummary(profile: draftProfile)
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost()
  }
}
