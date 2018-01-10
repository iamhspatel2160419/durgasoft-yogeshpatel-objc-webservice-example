//
//  SegmentContollDemoViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/13/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ViewController.h"

@interface SegmentContollDemoViewController : ViewController
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segout;
- (IBAction)SegmentControlClick:(id)sender;

@end
