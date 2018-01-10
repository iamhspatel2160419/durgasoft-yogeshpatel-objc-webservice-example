//
//  LNViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/23/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "LNViewController.h"

@interface LNViewController ()
{
    BOOL isGrantedNotificationAccess;
}
@end

@implementation LNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    isGrantedNotificationAccess=false;
    UNUserNotificationCenter * center = [UNUserNotificationCenter currentNotificationCenter];
    UNAuthorizationOptions options = UNAuthorizationOptionAlert + UNAuthorizationOptionSound;
    [center requestAuthorizationWithOptions:options completionHandler:
     ^(BOOL granted, NSError * _Nullable error){
         isGrantedNotificationAccess = granted;
     }
     ];

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

- (IBAction)lnBtn:(id)sender {
    
    if (isGrantedNotificationAccess)
    {
        UNUserNotificationCenter *center=[UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent * mucontent = [[UNMutableNotificationContent alloc]init];
        mucontent.title=@"Andiosdev Title";
        mucontent.subtitle=@"Andiosdev SubTitle";
        mucontent.body=@"Andiosdev Body";
        mucontent.sound=[UNNotificationSound defaultSound];
        
        UNTimeIntervalNotificationTrigger *trigger=[UNTimeIntervalNotificationTrigger triggerWithTimeInterval:3 repeats:NO];
        UNNotificationRequest * request = [UNNotificationRequest requestWithIdentifier:@"UYLocalNotification" content:mucontent trigger:trigger];
        [center addNotificationRequest:request withCompletionHandler:nil];
        
    }

    
    
}
@end
