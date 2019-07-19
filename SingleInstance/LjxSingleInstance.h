//
//  LjxSingleInstance.h
//  SingleInstance
//
//  Created by 吕建雄 on 2019/7/19.
//  Copyright © 2019 im.botim. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LjxSingleInstance : NSObject

@property (nonatomic, copy) NSString *defaultValue;
@property (nonatomic, copy) NSString *name;

+ (instancetype)sharedInstance;

- (void)clear;

@end

NS_ASSUME_NONNULL_END
