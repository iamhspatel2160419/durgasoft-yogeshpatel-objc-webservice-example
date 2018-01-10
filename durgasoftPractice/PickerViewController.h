//
//  PickerViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/13/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ViewController.h"

@interface PickerViewController : ViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property(strong,nonatomic)NSMutableArray *pickData1;
@property(strong,nonatomic)NSMutableArray *pickData2;
@property(weak, nonatomic) IBOutlet UITextField *txtF1;
@property(weak, nonatomic) IBOutlet UITextField *txtF2;

@end
