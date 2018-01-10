//
//  CustomeMenuViewContollerViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/20/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomeMenuViewContollerViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
- (IBAction)btnMenu:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *sideview;
@property (weak, nonatomic) IBOutlet UITableView *sidebar;
@property (strong,nonatomic)NSMutableArray *arrdata;

@end
