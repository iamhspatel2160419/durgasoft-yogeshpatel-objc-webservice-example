//
//  SegmentContollDemoViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/13/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "SegmentContollDemoViewController.h"

@interface SegmentContollDemoViewController ()

@end

@implementation SegmentContollDemoViewController
@synthesize segout,img;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)SegmentControlClick:(id)sender {
    
    switch (self.segout.selectedSegmentIndex) {
        case 0:
            self.img.image = [UIImage imageNamed:@"android.jpg"];
            break;
        case 1:
            self.img.image = [UIImage imageNamed:@"phonegap.png"];
            break;
        case 2:
            self.img.image = [UIImage imageNamed:@"php.png"];
            break;
        case 3:
            self.img.image = [UIImage imageNamed:@"phonegap.png"];
            break;
            
        default:
            break;
    }
    
}
@end
