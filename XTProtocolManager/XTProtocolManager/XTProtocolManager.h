//
//  XTProtocolManager.h
//  XTProtocolManager
//
//  Created by xiaotei's MacBookPro on 17/7/20.
//  Copyright © 2017年 xiaotei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XTProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
