//
//  ProfileHost.swift
//  Landmarks
//
//  Created by mnrn on 07/07/2020.
//  Copyright © 2020 mnrn. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
  @Environment(\.editMode) var mode
  @EnvironmentObject var userData: UserData
  @State var draftProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      HStack {
        Spacer()
        EditButton()
      }
      if self.mode?.wrappedValue == .inactive {
        ProfileSummary(profile: userData.profile)
      } else {
        Text("Profile Editor")
      }
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost().environmentObject(UserData())
  }
}
