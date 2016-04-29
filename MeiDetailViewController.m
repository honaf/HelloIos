//
//  MeiDetailViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/28.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "MeiDetailViewController.h"
#import "CarDetailViewController.h"
@interface MeiDetailViewController ()

@end

@implementation MeiDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"车模详情";
    // Do any additional setup after loading the view from its nib.
    
    UIImageView *imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wel"]];
    
    imageview.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height);
    
    [self.view addSubview:imageview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jump:(id)sender {
    CarDetailViewController *carDetail = [[CarDetailViewController alloc]initWithNibName:@"CarDetailViewController" bundle:nil];
//    carDetail.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:carDetail animated:YES];
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
