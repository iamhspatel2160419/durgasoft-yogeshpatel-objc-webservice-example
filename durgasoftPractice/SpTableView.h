//
//  SpTableView.h
//  durgasoftPractice
//
//  Created by hp ios on 11/18/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpTableView : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTableview;
@property (weak, nonatomic) IBOutlet UITextField *searchValue;
- (IBAction)FindResults:(UIButton *)sender;

@end
