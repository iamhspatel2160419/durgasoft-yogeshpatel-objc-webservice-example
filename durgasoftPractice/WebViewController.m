//
//  WebViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/14/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *strPath=[[NSBundle mainBundle]pathForResource:@"ios" ofType:@"pdf"];
    NSURL *url=[NSURL URLWithString:strPath];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [_webview loadRequest:request];
    [_webview setScalesPageToFit:YES];
    
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
