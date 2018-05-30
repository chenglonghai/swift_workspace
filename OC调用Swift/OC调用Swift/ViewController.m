//
//  ViewController.m
//  OC调用Swift
//
//  Created by longhai on 2018/3/27.
//  Copyright © 2018年 study. All rights reserved.
//

#import "ViewController.h"
#import "OC调用Swift-Switf.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SwiftHello *hello = [SwiftHello new];
    [hello sayHello];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
