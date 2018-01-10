//
//  ECVC.h
//  durgasoftPractice
//
//  Created by hp ios on 11/23/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECVC : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property(strong,nonatomic)NSMutableArray *rowName;
@property(strong,nonatomic)NSMutableArray *objectTitle;
@property(strong,nonatomic)NSMutableArray *objectName;
@property int selectedIndex;
@property(strong,nonatomic)UIButton *btnNumber;
@end
