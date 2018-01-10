//
//  ImageViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/12/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ImageViewController.h"
#import "ColViewController.h"
@interface ImageViewController ()

@end

@implementation ImageViewController
@synthesize strSingleImage,imgv;
- (void)viewDidLoad {
    [super viewDidLoad];
    imgv.image=[UIImage imageNamed:strSingleImage];
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
