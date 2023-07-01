//
//  Counter.swift
//  rn_cli_poc
//
//  Created by Sumit Dey on 01/07/23.
//

import Foundation
import React

@objc(Counter) // expose the class to objective-c as counter
class Counter: NSObject{
  private var count = 0;
  
  @objc
  func increment(_ callback:RCTResponseSenderBlock){
    count += 1;
    print("count=>",count);
    callback([count])
    
  }
  
  @objc
  static func requiresMainQueueSetup()->Bool{
    return true
  }
  
  @objc
  func constansToExport()->[String:Any]!{
    return ["initialCount":0]
  }
  
  
  @objc
  func decrement(_ resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock){
    
    if(count == 0){
      let error = NSError(domain: "", code:200, userInfo: nil);
      reject("ERROR_COUNT","count cannot be negative",error);
    } else {
      count -= 1;
      resolve(count);
    }
    
  }
  
}
