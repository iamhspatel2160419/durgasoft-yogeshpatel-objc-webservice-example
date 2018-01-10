//
//  TableViewCell.h
//  durgasoftPractice
//
//  Created by hp ios on 11/18/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txtFirstName;
@property (weak, nonatomic) IBOutlet UILabel *txtLastName;
@property (weak, nonatomic) IBOutlet UILabel *txtAge;
@property (weak, nonatomic) IBOutlet UILabel *txtLocation;
@property (weak, nonatomic) IBOutlet UILabel *txtNumberOfFollowers;
@property (weak, nonatomic) IBOutlet UILabel *txtNumberOfFollowings;
@property (weak, nonatomic) IBOutlet UIImageView *sportPartnerImageView;

@end
