//
//  SWViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/17/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWViewController : UIViewController
<UITableViewDelegate>
{

    NSTimer *timer;
    int milli;
    int sec;
    int min;

}
@property (weak, nonatomic) IBOutlet UILabel *lblmin;
@property (weak, nonatomic) IBOutlet UILabel *lblmili;
@property (weak, nonatomic) IBOutlet UILabel *lblsec;

- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)split:(id)sender;
- (IBAction)reset:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *table;
@property(strong,nonatomic)NSMutableArray *arrdata;
@property(strong,nonatomic)NSString *strmilli;
@property(strong,nonatomic)NSString *strsec;
@property(strong,nonatomic)NSString *strmin;
@property(strong,nonatomic)NSString *strhistory;

@end
