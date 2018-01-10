//
//  PLAYmusicViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/14/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "PLAYmusicViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
@interface PLAYmusicViewController ()

@end
AVAudioPlayer *player;
@implementation PLAYmusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *strPath=[[NSBundle mainBundle]pathForResource:@"tri" ofType:@"mp3"];
    NSURL *url=[NSURL URLWithString:strPath];
    player=[[AVAudioPlayer alloc]initWithData:url error:nil];
    player.volume=20.0;
    [player play];
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
