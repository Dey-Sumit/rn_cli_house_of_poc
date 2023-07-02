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
    
    
     // Print the plist values as a formatted dictionary
     for (key, value) in plistDict {
       print("\(key): \(value)")
     }
  }
  
  
  // Method to get the plist values and invoke a callback function in JavaScript
    @objc func getPlistValues(_ callback: RCTResponseSenderBlock) {
      // Get the path to the "Info.plist" file
      guard let plistPath = Bundle.main.path(forResource: "Info", ofType: "plist"),
            // Read the contents of the "Info.plist" file into a dictionary
            let plistDict = NSDictionary(contentsOfFile: plistPath) else {
        // Error handling if reading the plist file fails
        print("Error reading plist file.")
        return
      }
      
      // Convert the dictionary to an array to send back as the callback response
     //      let valuesArray = Array(plistDict.allValues)
      // Convert the dictionary to a formatted key-value object
        var keyValueObject: [String: Any] = [:]
        for (key, value) in plistDict {
          keyValueObject[String(describing: key)] = value
        }
      
      
      // Invoke the callback function in JavaScript with the values array
      callback([keyValueObject])
    }
  
  
  // Static method to indicate if the module requires main queue setup
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
}



/* THIS IS CLEANER ACCOR TO CHAT_GPT
 
 import Foundation
 import React

 @objc(PlistModule)
 class PlistModule: NSObject {
   
   // Method to print the values from "Info.plist"
   @objc func printPlistValues() {
     if let plistDict = getPlistDictionary() {
       // Print the plist values
       print(plistDict)
     }
   }
   
   // Method to get the plist dictionary
   private func getPlistDictionary() -> NSDictionary? {
     // Get the path to the "Info.plist" file
     guard let plistPath = Bundle.main.path(forResource: "Info", ofType: "plist") else {
       // Error handling if plist file not found
       print("Info.plist file not found.")
       return nil
     }
     
     // Read the contents of the "Info.plist" file into a dictionary
     guard let plistDict = NSDictionary(contentsOfFile: plistPath) else {
       // Error handling if reading the plist file fails
       print("Error reading plist file.")
       return nil
     }
     
     return plistDict
   }
   
   // Method to get the plist values and invoke a callback function in JavaScript
   @objc func getPlistValues(_ callback: RCTResponseSenderBlock) {
     if let plistDict = getPlistDictionary() {
       // Convert the dictionary to an array to send back as the callback response
       let valuesArray = Array(plistDict.allValues)
       
       // Invoke the callback function in JavaScript with the values array
       callback([valuesArray])
     }
   }
   
   // Static method to indicate if the module requires main queue setup
   @objc static func requiresMainQueueSetup() -> Bool {
     return true
   }
 }

 */
