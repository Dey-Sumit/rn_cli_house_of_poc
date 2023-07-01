import Foundation
import React

@objc(PlistModule)
class PlistModule: NSObject {
  
  @objc func printPlistValues(_ fileName: String) {
    guard let plistPath = Bundle.main.path(forResource: fileName, ofType: "plist"),
          let plistDict = NSDictionary(contentsOfFile: plistPath) else {
      print("Error reading plist file.")
      return
    }
    
    print(plistDict)
  }
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
