//
//  RatingsViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/14/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RatingsViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *rat_collection;
- (IBAction)rat_act:(UIButton*)sender;
@property (weak, nonatomic) IBOutlet UILabel *rat_txt;

@end
