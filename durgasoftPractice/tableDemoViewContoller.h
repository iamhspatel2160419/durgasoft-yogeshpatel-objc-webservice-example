//
//  tableDemoViewContoller.h
//  durgasoftPractice
//
//  Created by hp ios on 11/12/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableDemoViewContoller : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)NSMutableArray *teamName;
@property(strong,nonatomic)NSMutableArray *teamDetails;

@end
