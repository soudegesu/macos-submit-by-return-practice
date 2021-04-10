//
//  ContentView.swift
//  macos-submit-by-return-practice
//
//  Created by soudegesu on 2021/04/10.
//

import SwiftUI

struct ContentView: View {
  
  @State private var account: String = ""

  @State private var password: String = ""
  
  var body: some View {
    VStack(spacing: 20) {
      TextField("Username", text: $account, onCommit: {
        debugPrint("Username is entered")
      }).textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 265, height: 20, alignment: .center)
      
      SecureField(
        "Password",
        text: $password,
        onCommit: {
          debugPrint("Password is entered")
        }
      ).textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 265, height: 20, alignment: .center)
      
      Button(action: {
        debugPrint("Submit")
      }) {
        Text("Signin")
      }
    }.padding(.all, 16)
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
