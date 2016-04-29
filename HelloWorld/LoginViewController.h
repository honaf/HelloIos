//
//  LoginViewController.h
//  HelloWorld
//
//  Created by honaf on 16/4/15.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarViewController.h"

@interface LoginViewController : UIViewController <UITableViewDelegate,carDelegate>

@property (assign) int num;

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;



@end
