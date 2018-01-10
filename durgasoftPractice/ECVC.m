//
//  ECVC.m
//  durgasoftPractice
//
//  Created by hp ios on 11/23/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "ECVC.h"
#import "EViewCell.h"
@interface ECVC ()

@end

@implementation ECVC
@synthesize rowName,objectTitle,objectName,selectedIndex,tableview;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    selectedIndex=-1;
    rowName=[[NSMutableArray alloc]init];
    for(int i=1;i<=5;i++)
    {
        NSString *rowTitle=[[NSString alloc]initWithFormat:@"Row %d",i];
        [rowName addObject:rowTitle];
        
    
    }
    objectTitle=[[NSMutableArray alloc]initWithObjects:@"Object One",@"Object Two",
                @"Object Three",@"Object Four",@"Object Five", nil];
    objectName=[[NSMutableArray alloc]initWithObjects:@"Object PHP",@"Object Android",
                @"Object Phonegap",@"Object IOS",@"Object Jquery", nil];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return objectTitle.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EViewCell *evcell=(EViewCell *)[tableview dequeueReusableCellWithIdentifier:@"ecell"];
    if(evcell==nil)
    {
        
        NSArray *nib=[[NSBundle mainBundle]loadNibNamed:@"ExpandingCell" owner:self options:nil];
        evcell=[nib objectAtIndex:0];
        
        
    }
    evcell.lblRow.text=rowName[indexPath.row];
    evcell.rowName.text=objectTitle[indexPath.row];
    evcell.objectName.text=objectName[indexPath.row];
    
    int cal = (indexPath.row*1)*25;
    evcell.objectCount.text=[[NSString alloc]initWithFormat:@"%d",cal];
    return evcell;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(selectedIndex==indexPath.row)
    {
        return 100;
    }
    else
    {
         return 44;
    }

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    if(selectedIndex==indexPath.row)
    {
        selectedIndex=-1;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        return;
    }
    if(selectedIndex==-1)
    {
        NSIndexPath *prev=[NSIndexPath indexPathForRow:selectedIndex inSection:0];
        selectedIndex=indexPath.row;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:prev] withRowAnimation:UITableViewRowAnimationFade];
    
    }
    selectedIndex=indexPath.row;
    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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

@end
