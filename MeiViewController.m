//
//  MeiViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/27.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "MeiViewController.h"
#import "MeiDetailViewController.h"

@interface MeiViewController ()

@end

@implementation MeiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)jump:(id)sender {
    MeiDetailViewController *meiDetail = [[MeiDetailViewController alloc]initWithNibName:@"MeiDetailViewController" bundle:nil];
    
    
    meiDetail.hidesBottomBarWhenPushed = YES;
   [self.navigationController pushViewController:meiDetail animated:YES];
//    self.hidesBottomBarWhenPushed=NO;
//    CarViewController *f ;
//    f.i = 10;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
