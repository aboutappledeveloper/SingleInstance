//
//  ViewController.m
//  SingleInstance
//
//  Created by 吕建雄 on 2019/7/19.
//  Copyright © 2019 im.botim. All rights reserved.
//

#import "ViewController.h"
#import "LjxSingleInstance.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LjxSingleInstance *instance = [LjxSingleInstance sharedInstance];
    instance.name = @"step1 name";
    
    NSLog(@"step1 instance=%p",instance);
    NSLog(@"step1 defauleValue=%@,name=%@",instance.defaultValue,instance.name);
    
    instance = nil;
    NSLog(@"step2 defauleValue=%@,name=%@",instance.defaultValue,instance.name);
    
    instance = [LjxSingleInstance sharedInstance];
    NSLog(@"step2 instance=%p",instance);
    NSLog(@"step2 defauleValue=%@,name=%@",instance.defaultValue,instance.name);
    
    [instance clear];
    instance = [LjxSingleInstance sharedInstance];
    NSLog(@"step3 instance=%p",instance);
    NSLog(@"step3 defauleValue=%@,name=%@",instance.defaultValue,instance.name);
    
}


@end
