//
//  HomeTabViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/28.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "HomeTabViewController.h"
#import "CarViewController.h"
#import "MeiViewController.h"

@interface HomeTabViewController ()

@end

@implementation HomeTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    CarViewController *c1=[[CarViewController alloc]init];
//    c1.delegate = self;
    c1.view.backgroundColor=[UIColor grayColor];
    c1.view.backgroundColor=[UIColor greenColor];
    c1.title=@"车展";
    
    c1.tabBarItem.selectedImage = [UIImage imageNamed:@"home_selected"];
    c1.tabBarItem.badgeValue=@"123";
    UINavigationController *Nav1 = [[UINavigationController alloc] initWithRootViewController:c1];
    [Nav1.tabBarItem setImage:[UIImage imageNamed:@"home"]];
    [Nav1.tabBarItem setSelectedImage:[[UIImage imageNamed:@"home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [Nav1.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    [Nav1.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
    
    MeiViewController *c2=[[MeiViewController alloc]init];
    c2.view.backgroundColor=[UIColor brownColor];
    c2.title=@"车模";
    UINavigationController *Nav2 = [[UINavigationController alloc] initWithRootViewController:c2];
    [Nav2.tabBarItem setImage:[UIImage imageNamed:@"location"]];
    [Nav2.tabBarItem setSelectedImage:[[UIImage imageNamed:@"location_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [Nav2.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    [Nav2.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
    //  [UITabBarItem.appearance setTitleTextAttributes:@{UITextAttributeTextColor : [UIColor greenColor] } forState:UIControlStateNormal];
    
    
    
//    UITabBarController *tab = [[UITabBarController alloc]init];
//    
//    //    [tab.tabBar setTintColor: [UIColor brownColor]];
//    
//    
//    
//    
//    
//    
//    tab.viewControllers=@[Nav1,Nav2];
    
    //    [tab addChildViewController:Nav1];
    //    [tab addChildViewController:Nav2];
    
    //    [UIApplication sharedApplication].windows[0].rootViewController = tab;
    
//    [self presentViewController:tab animated:NO completion:nil];
    
    //    [self.navigationController pushViewController:tab animated:NO];
    
    self.viewControllers = @[Nav1,Nav2];
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
