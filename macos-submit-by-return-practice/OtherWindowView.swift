//
//  OtherWindowView.swift
//  macos-submit-by-return-practice
//
//  Created by soudegesu on 2021/04/11.
//

import SwiftUI

struct OtherWindowView: View {
  
  @State private var otherText: String = ""
  
  var body: some View {
    VStack(spacing: 10) {
      Text("Submit command is not fired with return key when this window is focused")
      TextField("Hit return key", text: $otherText) { isEditing in
        debugPrint("isEditing: \(isEditing)")
      } onCommit: {
        debugPrint("OtherText is entered")
      }
      .textFieldStyle(RoundedBorderTextFieldStyle())
      .frame(width: 265, height: 20, alignment: .center)
    }.padding()
  }
}

struct OtherWindowView_Previews: PreviewProvider {
    static var previews: some View {
        OtherWindowView()
    }
}
