//
//  LjxSingleInstance.m
//  SingleInstance
//
//  Created by 吕建雄 on 2019/7/19.
//  Copyright © 2019 im.botim. All rights reserved.
//

#import "LjxSingleInstance.h"

@implementation LjxSingleInstance

static LjxSingleInstance *instance = nil;
static dispatch_once_t onceToken;

+ (instancetype)sharedInstance{
//    NSLog(@"前 onceToken=%ld",onceToken);
    dispatch_once(&onceToken, ^{
//        NSLog(@"中 onceToken=%ld",onceToken);
        instance = [[LjxSingleInstance alloc] init];
        instance.defaultValue = @"init defaultValue";
    });
//    NSLog(@"后 onceToken=%ld",onceToken);
    return instance;
}

- (void)clear{
    onceToken = 0;
}

@end
