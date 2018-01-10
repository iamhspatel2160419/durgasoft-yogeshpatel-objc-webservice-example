//
//  ColViewController.h
//  durgasoftPractice
//
//  Created by hp ios on 11/12/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ViewController.h"

@interface ColViewController : ViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property(strong,nonatomic)NSMutableArray *arrForCollView;

@end
