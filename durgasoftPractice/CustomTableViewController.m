//
//  CustomTableViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/12/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomCell.h"
@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomCell * cell=[[CustomCell alloc]init];
    cell.strimg=@"php.png";
    cell.strTeamMemberName=@"kiran";
    cell.strTeamMemberRole=@"Senior php Web Developer";
    
    CustomCell * cell1=[[CustomCell alloc]init];
    cell1.strimg=@"php.png";
    cell1.strTeamMemberName=@"Pratik";
    cell1.strTeamMemberRole=@"Senior php Web Developer";
    
    CustomCell * cell2=[[CustomCell alloc]init];
    cell2.strimg=@"android.jpg";
    cell2.strTeamMemberName=@"Bhavesh";
    cell2.strTeamMemberRole=@"Senior Android App Developer";
    
    CustomCell * cell3=[[CustomCell alloc]init];
    cell3.strimg=@"phonegap.png";
    cell3.strTeamMemberName=@"Hardik Patel";
    cell3.strTeamMemberRole=@"Junior Hybrid App Developer";
    
    _arrdata=[[NSMutableArray alloc]initWithObjects:cell,cell1,cell2,cell3, nil];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _arrdata.count;

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellC"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellC"];
        
    }
    CustomCell *cusCell=[_arrdata objectAtIndex:indexPath.row];
    UIImageView *image1=(UIImageView *)[cell viewWithTag:0];
    image1.image=[UIImage imageNamed:cusCell.strimg];
    
    UILabel *lblstrTeamMemberName=(UILabel *)[cell viewWithTag:1];
    lblstrTeamMemberName.text=cusCell.strTeamMemberName;
    

    UILabel *lblstrTeamMemberRole=(UILabel *)[cell viewWithTag:2];
    lblstrTeamMemberRole.text=cusCell.strTeamMemberRole;

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
