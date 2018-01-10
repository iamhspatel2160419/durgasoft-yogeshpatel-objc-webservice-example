//
//  VideoBackViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/14/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "VideoBackViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
@interface VideoBackViewController ()
{
    AVPlayer *player;
}
@end

@implementation VideoBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     NSString *strPath=[[NSBundle mainBundle]pathForResource:@"sdmp4" ofType:@"mp4"];
     NSURL *url=[NSURL fileURLWithPath:strPath];
    
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
    player=[AVPlayer playerWithPlayerItem:item];
    player.volume=2.0;
    
    AVPlayerLayer *layer1=[AVPlayerLayer playerLayerWithPlayer:player]
    ;
    layer1.videoGravity=AVLayerVideoGravityResizeAspectFill;
    layer1.frame = _videoview.layer.bounds;
    [_videoview.layer addSublayer:layer1];
    [player play];
    
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
