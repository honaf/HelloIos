//
//  WelcomeViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/28.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "WelcomeViewController.h"
#import "LoginViewController.h"
@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(login) userInfo:nil repeats:NO];

}


- (void)login {
    LoginViewController *login = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    [self.navigationController pushViewController:login animated:YES];
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
