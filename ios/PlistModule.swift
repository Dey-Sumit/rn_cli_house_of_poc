import Foundation
import React

@objc(PlistModule)
class PlistModule: NSObject {
  
  // Method to print the values from "Info.plist"
  @objc func printPlistValues() {
    // Get the path to the "Info.plist" file
    guard let plistPath = Bundle.main.path(forResource: "Info", ofType: "plist"),
          // Read the contents of the "Info.plist" file into a dictionary
          let plistDict = NSDictionary(contentsOfFile: plistPath) else {
      // Error handling if reading the plist file fails
      print("Error reading plist file.")
      return
    }
    
    // Print the plist values
    print(plistDict)
  }
  
  // Static method to indicate if the module requires main queue setup
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
