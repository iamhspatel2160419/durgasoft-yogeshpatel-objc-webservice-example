//
//  ForImageViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/13/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ForImageViewController.h"

@interface ForImageViewController ()

@end

@implementation ForImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewimg.image=[UIImage imageNamed:_strimg];
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

@end
