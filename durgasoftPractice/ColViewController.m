//
//  ColViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/12/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ColViewController.h"
#import "ImageViewController.h"

@interface ColViewController ()

@end

@implementation ColViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _arrForCollView=[[NSMutableArray alloc]initWithObjects:@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",
                     @"phonegap.png",@"php.png",@"android.jpg",@"android.jpg",nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

     return _arrForCollView.count;

}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    UICollectionViewCell *ucv=[collectionView dequeueReusableCellWithReuseIdentifier:@"cvcell" forIndexPath:indexPath];
    
    UIImageView * uimv=(UIImageView *)[ucv viewWithTag:1];
    uimv.image=[UIImage imageNamed:[_arrForCollView objectAtIndex:indexPath.row]];
    return ucv;


}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

    ImageViewController * imvcontroller=[self.storyboard instantiateViewControllerWithIdentifier:@"imgviewc"];
    imvcontroller.strSingleImage=[_arrForCollView objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:imvcontroller animated:true];

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
