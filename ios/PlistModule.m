//
//  PlistModule.m
//  rn_cli_poc
//
//  Created by Sumit Dey on 02/07/23.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import "React/RCTBridgeModule.h"


@interface RCT_EXTERN_MODULE(PlistModule, NSObject)

RCT_EXTERN_METHOD(printPlistValues)
RCT_EXTERN_METHOD(getPlistValues: (RCTResponseSenderBlock)callback)

@end
