//
//  ViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/11/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize sl1,sl2,sl3;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *lbl1 = [[UILabel alloc] initWithFrame:CGRectMake(144, 416, 100, 50)];
    lbl1.text=@"DADA BHAGWAN";
    lbl1.textColor=[UIColor blueColor];
    lbl1.numberOfLines=1;
    lbl1.textAlignment=NSTextAlignmentCenter;
    [lbl1.layer setBorderWidth:1.0f];
    [lbl1.layer setCornerRadius:10.0];
    lbl1.highlighted=YES;
    lbl1.autoresizingMask=UIViewAutoresizingFlexibleLeftMargin|
                        UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleRightMargin|
    UIViewAutoresizingFlexibleBottomMargin;
    lbl1.highlightedTextColor=[UIColor blackColor];
    [lbl1.layer setBorderColor:[UIColor blueColor].CGColor];
    lbl1.font=[UIFont systemFontOfSize:10.0];
    
    //    [self.view addSubview: lbl1];
    
    UITextField *tf= [[UITextField alloc] initWithFrame:CGRectMake(20, 490, 300, 50)];
    tf.borderStyle=UITextBorderStyleRoundedRect;
     tf.textColor=[UIColor whiteColor];
    tf.tag=12;
    tf.hidden=NO;
    tf.keyboardType=UIKeyboardTypeEmailAddress;
    tf.textAlignment=NSTextAlignmentCenter;
    tf.spellCheckingType=UITextSpellCheckingTypeDefault;
    tf.font=[UIFont fontWithName:@"optima" size:20.0];
    tf.backgroundColor=[UIColor blueColor];
    tf.autoresizingMask=UIViewAutoresizingFlexibleLeftMargin|
    UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleRightMargin|
    UIViewAutoresizingFlexibleBottomMargin;
    
    
   //  [self.view addSubview: tf];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderValueChanged:(UISlider *)sender {
   
    UIColor *colour = [[UIColor alloc]initWithRed:sl1.value green:sl2.value blue:sl3.value alpha:1.0];
    self.view.backgroundColor = colour;
    
}

- (IBAction)touchUpInside:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Do you want to say hello?"
                                                    message:@"More info..."
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Google",nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        NSLog(@"Cancel Tapped.");
    }
    else if (buttonIndex == 1) {
        NSLog(@"OK Tapped. Hello World!");
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.forasinvest.com/v2/index.php"]];
    }
}
@end
