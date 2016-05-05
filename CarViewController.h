//
//  CarViewController.h
//  HelloWorld
//
//  Created by honaf on 16/4/27.
//  Copyright © 2016年 tlblios. All rights reserved.
//

#import <UIKit/UIKit.h>



//@protocol carDelegate <NSObject>

//@optional
//- (void)changeNumber:(int)num;
//
//@end

@interface CarViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
    
}
@property (assign) int i;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (copy,nonatomic) NSArray *dwarves;

//@property (nonatomic, retain) id<carDelegate> delegate;



@end
