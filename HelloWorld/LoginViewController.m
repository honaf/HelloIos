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
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    
//    [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:@"www.baidu.com" parameters:nil error:nil];

    
//    UIImageView *imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wel"]];
//    
//    imageview.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height);
//    
//    [self.view addSubview:imageview];
    
}

- (IBAction)login:(id)sender {
    NSString *userNameValue = self.userName.text;
    NSString *passwordValue = self.password.text;
    if ([self checkInput:userNameValue password:passwordValue]) {
            HomeTabViewController * home = [[HomeTabViewController alloc]initWithNibName:@"HomeTabViewController" bundle:nil];
//            [self.navigationController pushViewController:home animated:YES];
            [self presentViewController:home animated:YES completion:nil];
    }
    
//    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//
//    NSURL *URL = [NSURL URLWithString:@"http://httpbin.org/get"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    
//    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
//        if (error) {
//            NSLog(@"Error: %@", error);
//        } else {
//            NSLog(@"%@ %@", response, responseObject);
//        }
//    }];
//    [dataTask resume];
}

- (BOOL)checkInput:(NSString *)userName password:(NSString*)password{
    if(userName == nil || userName.length == 0){
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示"
                                                                                 message:@"用户名不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:alertAction];
        [self presentViewController:alertController animated:YES completion:nil];
        return false;
    }else if(password == nil || password.length ==0){
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示"
                                                                                 message:@"密码不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:alertAction];
        [self presentViewController:alertController animated:YES completion:nil];
        return false;
    }
    return YES;

}
//- (void)changeNumber:(int)num{
//    NSLog(@"num = %d",num);
//}




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
