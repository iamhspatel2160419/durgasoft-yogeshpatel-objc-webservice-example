//
//  EViewCell.h
//  durgasoftPractice
//
//  Created by hp ios on 11/23/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblRow;
@property (weak, nonatomic) IBOutlet UILabel *rowName;
@property (weak, nonatomic) IBOutlet UILabel *object;
@property (weak, nonatomic) IBOutlet UILabel *objectName;
@property (weak, nonatomic) IBOutlet UILabel *objectCount;
@property (weak, nonatomic) IBOutlet UILabel *objectNumber;
@property (weak, nonatomic) IBOutlet UIButton *btnNumber;

@end
