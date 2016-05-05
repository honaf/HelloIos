//
//  CarViewController.m
//  HelloWorld
//
//  Created by honaf on 16/4/27.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import "CarViewController.h"

@interface CarViewController ()

@end

@implementation CarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
      NSLog(@"bbb");
    self.dwarves = @[@"sleepy",@"sneezy",@"bashful",@"Happy",@"sleepy",@"sneezy",@"bashful",@"Happy",@"sleepy",@"sneezy",@"bashful",@"Happy",@"sleepy",@"sneezy",@"bashful",@"Happy"];
    
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dwarves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    cell.textLabel.text = self.dwarves[indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@%@",self.dwarves[indexPath.row],@"你妈妈喊你回家吃饭！"];
    
    
    
    UIImage *image = [UIImage imageNamed:@"home"];
    cell.imageView.image = image;
    
    cell.imageView.highlightedImage = [UIImage imageNamed:@"home_selected"];
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        return nil;
    }else{
        return indexPath;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"aaaaa");
    NSString *message = [[NSString alloc] initWithFormat:@"你选择了 %@",self.dwarves[indexPath.row]];
    if([[[UIDevice currentDevice] systemVersion]floatValue]>=8.0){
        
    }else{
        
    }
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:message delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
    
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
                         
 }


@end
