//
//  NumberViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/23/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberViewController : UIViewController
- (IBAction)backBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblNumber;
@property int isNumber;
@end
