//
//  LoginViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/15.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "LoginViewController.h"



#import "CarViewController.h"
#import "MeiViewController.h"

#import "HomeTabViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    
//    UIImageView *imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wel"]];
//    
//    imageview.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height);
//    
//    [self.view addSubview:imageview];
    
}

- (IBAction)login:(id)sender {
    HomeTabViewController * home = [[HomeTabViewController alloc]initWithNibName:@"HomeTabViewController" bundle:nil];
//    [self.navigationController pushViewController:home animated:YES];
    [self presentViewController:home animated:NO completion:nil];
}


- (void)changeNumber:(int)num{
    NSLog(@"num = %d",num);
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
