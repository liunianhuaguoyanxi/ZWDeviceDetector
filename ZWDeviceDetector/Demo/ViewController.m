//
//  ViewController.m
//  ZWDeviceDetector
//
//  Created by 流年划过颜夕 on 2020/3/11.
//  Copyright © 2020 liunianhuaguoyanxi. All rights reserved.
//

#import "ViewController.h"
#import "ZWDeviceDetector.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"DeviceName: %@",[ZWDeviceDetector sharedDetector].modelName);
    
    
}


@end
