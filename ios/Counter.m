//
//  Counter.m
//  rn_cli_poc
//
//  Created by Sumit Dey on 01/07/23.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter,NSObject)

RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback)

RCT_EXTERN_METHOD(decrement:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)

@end
