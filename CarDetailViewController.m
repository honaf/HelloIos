//
//  CarDetailViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/27.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "CarDetailViewController.h"
#import "OtherViewController.h"
@interface CarDetailViewController ()

@end

@implementation CarDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"车展详情";
}
- (IBAction)jump:(id)sender {
    OtherViewController *other = [[OtherViewController alloc]initWithNibName:@"OtherViewController" bundle:nil];
    [self.navigationController pushViewController:other animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
