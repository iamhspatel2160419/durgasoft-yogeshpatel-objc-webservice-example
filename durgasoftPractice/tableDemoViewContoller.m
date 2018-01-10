//
//  tableDemoViewContoller.m
//  durgasoftPractice
//
//  Created by hp ios on 11/12/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "tableDemoViewContoller.h"

@interface tableDemoViewContoller ()

@end

@implementation tableDemoViewContoller
@synthesize teamName,teamDetails;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    teamName=[[NSMutableArray alloc]initWithObjects:@"RyanRoaders",@"GPL",@"DreamKiller",@"RajsthanRoya", nil];
    teamDetails=[[NSMutableArray alloc]initWithObjects:@"The Rajasthan Royals is a cricket team Royals is a cricket team Royals is a cricket team",@"in the Indian Premier Royals is a cricket team",@" League from Royals is a cricket team", @"the city of Jaipur", nil];
    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return   teamName.count;


}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {

        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(cell==nil)
        {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        
        }
        
        
        cell.textLabel.text=[teamName objectAtIndex:indexPath.row];
        cell.detailTextLabel.text=[teamDetails objectAtIndex:indexPath.row];
        
        return cell;
        

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
