//
//  XTProtocolManager.m
//  XTProtocolManager
//
//  Created by xiaotei's MacBookPro on 17/7/20.
//  Copyright © 2017年 xiaotei. All rights reserved.
//

#import "XTProtocolManager.h"

@interface XTProtocolManager()

@property (nonatomic,strong)NSMutableDictionary* serviceProvideSource;

@end

@implementation XTProtocolManager

+ (XTProtocolManager*)shareInstance{
    static XTProtocolManager* manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (instancetype)init{
    if (self = [super init]) {
        _serviceProvideSource = [NSMutableDictionary dictionary];
    }
    return self;
}



+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol{
    if (provide == nil || protocol == nil) {
        return;
    }
    [[self shareInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol{
    return [[self shareInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

- (void)dealloc{
    NSLog(@"%@",NSStringFromClass([self class]));
}

@end
