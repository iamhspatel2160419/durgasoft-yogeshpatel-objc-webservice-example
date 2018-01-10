//
//  PageviewViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/13/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "PageviewViewController.h"
#import "ForImageViewController.h"
@interface PageviewViewController ()

@end

@implementation PageviewViewController
@synthesize arrimg;
- (void)viewDidLoad {
    [super viewDidLoad];
    arrimg=[[NSArray alloc]initWithObjects:@"android.jpg",@"phonegap.png",@"php.png", nil];
    self.dataSource=self;
    ForImageViewController * vc=(ForImageViewController *)[self viewcontollerAtIndex:0];
    NSArray  * arr=[NSArray arrayWithObject:vc];
    [self setViewControllers:arr direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIViewController *)viewcontollerAtIndex:(NSUInteger)index
{
    ForImageViewController *view1=[self.storyboard instantiateViewControllerWithIdentifier:@"imgvie"];
    view1.strimg=arrimg[index];
    view1.valueIndex=index;
    return view1;
    

}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((ForImageViewController *)viewController).valueIndex;
    if(index==0||index==NSNotFound)
    {
    
        return nil;
    }
    index--;
    return [self viewcontollerAtIndex:index];
    
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{

    NSUInteger index = ((ForImageViewController *)viewController).valueIndex;
    if(index==NSNotFound)
    {
        
        return nil;
    }
    index++;
    if(index==arrimg.count)
    {
    
        return nil;
    }
    return [self viewcontollerAtIndex:index];


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
