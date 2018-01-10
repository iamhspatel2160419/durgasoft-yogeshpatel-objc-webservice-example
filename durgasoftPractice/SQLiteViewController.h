//
//  SQLiteViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/26/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQLiteViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *txtname;
@property (weak, nonatomic) IBOutlet UITextField *txtcity;
- (IBAction)btnsave:(id)sender;
- (IBAction)btnupdate:(id)sender;
- (IBAction)btndelete:(id)sender;
- (IBAction)btnshow:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property(strong,nonatomic)NSMutableArray *arrmaindata;
@end
