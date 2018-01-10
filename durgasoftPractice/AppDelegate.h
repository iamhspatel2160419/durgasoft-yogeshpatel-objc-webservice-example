//
//  AppDelegate.h
//  durgasoftPractice
//
//  Created by hp ios on 11/11/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,UNUserNotificationCenterDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic)NSString *strpath;
-(void)copyandpaste;

@end

