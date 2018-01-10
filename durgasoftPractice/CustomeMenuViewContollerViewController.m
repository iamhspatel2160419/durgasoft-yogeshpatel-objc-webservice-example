//
//  CustomeMenuViewContollerViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/20/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "CustomeMenuViewContollerViewController.h"
#import "MenuItemCell.h"
#import "AndroidScreenVC.h"
@interface CustomeMenuViewContollerViewController ()
{

    BOOL isSideViewOpen;
}
@end

@implementation CustomeMenuViewContollerViewController
@synthesize sidebar,sideview,arrdata;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    sidebar.backgroundColor=[UIColor groupTableViewBackgroundColor];
    sideview.hidden=YES;
    isSideViewOpen=false;
    MenuItemCell *mic=[MenuItemCell alloc];
    mic.strlbl=@"Android";
    mic.strImg=@"android.jpg";
    
    MenuItemCell *mic1=[MenuItemCell alloc];
    mic1.strlbl=@"Phonegap";
    mic1.strImg=@"phonegap.png";
    
    MenuItemCell *mic2=[MenuItemCell alloc];
    mic2.strlbl=@"PHP";
    mic2.strImg=@"php.png";
    arrdata=[[NSMutableArray alloc]initWithObjects:mic,mic1,mic2, nil];
    

    
    // Do any additional setup after loading the view.
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return arrdata.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellmenu"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"cellmenu"];
    }
    MenuItemCell *micell=[arrdata objectAtIndex:indexPath.row];
    UIImageView *uimg=(UIImageView *)[cell viewWithTag:1];
    uimg.image=[UIImage imageNamed:micell.strImg];
    UILabel *ulabel=(UILabel *)[cell viewWithTag:2];
    ulabel.text=micell.strlbl;
    return cell;


}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        AndroidScreenVC *avc=[self.storyboard instantiateViewControllerWithIdentifier:@"androidvc"];
        [self.navigationController pushViewController:avc animated:YES];
    }
    else if(indexPath.row==1)
    {
        AndroidScreenVC *avc=[self.storyboard instantiateViewControllerWithIdentifier:@"androidvc"];
        [self.navigationController pushViewController:avc animated:YES];
    }
    
}

// first is side View
// 1=> 0 42 249 349
// 0=> 0 42 0 349

// second is side bar
// 1=> 0 0 240 330
// 0=> 0 0 0 330 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnMenu:(id)sender
{
    sideview.hidden=NO;
    sidebar.hidden=NO;
    [self.view bringSubviewToFront:sideview];
    if(!isSideViewOpen)
    {
        isSideViewOpen=true;
        [sidebar setFrame:CGRectMake(0, 0, 0, 330)];
        [sideview setFrame:CGRectMake(0, 42, 0, 349)];
        [UIView beginAnimations:@"TableAnimation" context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.2];
        [sidebar setFrame:CGRectMake(0, 0, 240, 330)];
        [sideview setFrame:CGRectMake(0, 42, 249,349)];
        [UIView commitAnimations];
     }
    else
    {
        isSideViewOpen=false;
        sideview.hidden=YES;
        sidebar.hidden=YES;
        [sidebar setFrame:CGRectMake(0, 0, 240, 330)];
        [sideview setFrame:CGRectMake(0, 42, 249,349)];
        [UIView beginAnimations:@"TableAnimation" context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.2];
        [sidebar setFrame:CGRectMake(0, 0, 0, 330)];
        [sideview setFrame:CGRectMake(0, 42, 0, 349)];
        [UIView commitAnimations];
    }
    
    
}


@end
