//
//  AppDelegate.swift
//  macos-submit-by-return-practice
//
//  Created by soudegesu on 2021/04/10.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var window: NSWindow!
  var otherWindow: NSWindow!

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    
    otherWindow = NSWindow(
      contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
      styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
      backing: .buffered, defer: false
    )
    otherWindow.isReleasedWhenClosed = false
    otherWindow.center()
    otherWindow.setFrameAutosaveName("Other Window")
    otherWindow.contentView = NSHostingView(rootView: OtherWindowView())
    otherWindow.makeKeyAndOrderFront(nil)
    
    // Create the SwiftUI view that provides the window contents.
    let contentView = ContentView()

    // Create the window and set the content view.
    window = NSWindow(
        contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
        styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
        backing: .buffered, defer: false)
    window.isReleasedWhenClosed = false
    window.center()
    window.setFrameAutosaveName("Main Window")
    window.contentView = NSHostingView(rootView: contentView)
    window.makeKeyAndOrderFront(nil)
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

