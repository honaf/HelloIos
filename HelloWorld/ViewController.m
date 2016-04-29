//
//  ViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/15.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int a;
    a = [self add:1 :2];
    NSLog(@"num%i",a);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)add:(int) num1 :(int)arg{
    return num1+arg;
}


@end
