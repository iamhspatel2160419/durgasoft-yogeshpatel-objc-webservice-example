//
//  ValiViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 12/1/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ValiViewController.h"
#import "TextFieldValidator.h"
#define REGEX_USER_NAME_LIMIT @"^.{3,10}$"
#define REGEX_USER_NAME @"[A-Za-z0-9]{3,10}"
#define REGEX_EMAIL @"[A-Z0-9a-z._%+-]{3,}+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
#define REGEX_PASSWORD_LIMIT @"^.{6,20}$"
#define REGEX_PASSWORD @"[A-Za-z0-9]{6,20}"
#define REGEX_PHONE_DEFAULT @"[0-9]{3}\\-[0-9]{3}\\-[0-9]{4}"

@interface ValiViewController ()
{
    IBOutlet TextFieldValidator *FName;
    IBOutlet TextFieldValidator *LName;
    IBOutlet TextFieldValidator *Email;
    IBOutlet TextFieldValidator *Password;
    IBOutlet TextFieldValidator *ConPassword;
}
@end

@implementation ValiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupAlerts];
}
-(void)setupAlerts{
    [FName addRegx:REGEX_USER_NAME_LIMIT withMsg:@"User name charaters limit should be come between 3-10"];
    [LName addRegx:REGEX_USER_NAME withMsg:@"Only alpha numeric characters are allowed."];
    FName.validateOnResign=NO;
    
    [Email addRegx:REGEX_EMAIL withMsg:@"Enter valid email."];
    
    [Password addRegx:REGEX_PASSWORD_LIMIT withMsg:@"Password characters limit should be come between 6-20"];
    [Password addRegx:REGEX_PASSWORD withMsg:@"Password must contain alpha numeric characters."];
    
    [ConPassword addConfirmValidationTo:Password withMsg:@"Confirm password didn't match."];
    
    
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

- (IBAction)validateFields:(id)sender {
    if([FName validate] & [LName validate] & [Password validate] & [ConPassword validate] & [Email validate])
    {
        NSLog(@"Validation Done");
       
    }
}
@end
