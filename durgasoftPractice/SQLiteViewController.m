//
//  SQLiteViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/26/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "SQLiteViewController.h"
#import "dboperation.h"

@interface SQLiteViewController ()

@end

@implementation SQLiteViewController
@synthesize arrmaindata,txtcity,txtname,tableview;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btnsave:(id)sender {
    
    NSString *strsave = [[NSString alloc]initWithFormat:@"insert into studinfo values('%@','%@')",txtname.text,txtcity.text];
    dboperation *ds = [[dboperation alloc]init];
    BOOL st = [ds getalluser:strsave];
    if (st)
    {
        NSLog(@"data is save");
    }
    else
    {
        NSLog(@"data is not save");
    }

}

- (IBAction)btnupdate:(id)sender {
    
    NSString *strsave = [[NSString alloc]initWithFormat:@"update studinfo set city='%@' where name='%@'",txtcity.text,txtname.text];
    dboperation *ds = [[dboperation alloc]init];
    BOOL st = [ds getalluser:strsave];
    if (st)
    {
        NSLog(@"data is Update");
    }
    else
    {
        NSLog(@"data is not update");
    }

}

- (IBAction)btndelete:(id)sender {
    NSString *strsave = [[NSString alloc]initWithFormat:@"delete from studinfo where name = '%@'",txtname.text];
    dboperation *ds = [[dboperation alloc]init];
    BOOL st = [ds getalluser:strsave];
    if (st)
    {
        NSLog(@"data is Deleted");
    }
    else
    {
        NSLog(@"data is not deleted");
    }

}

- (IBAction)btnshow:(id)sender {
    
    NSString *strshow = [[NSString alloc]initWithFormat:@"select * from studinfo"];
    dboperation *ds = [[dboperation alloc]init];
    arrmaindata = [[NSMutableArray alloc]init];
    arrmaindata = [ds getalluser:strshow];
    [tableview reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrmaindata.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableview dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"cell"];
    }
    cell.textLabel.text=[[arrmaindata objectAtIndex:indexPath.row]objectForKey:@"name"];//name field textlabel store
    cell.detailTextLabel.text=[[arrmaindata objectAtIndex:indexPath.row]objectForKey:@"city"];//detail text city data store
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    txtname.text=[[arrmaindata objectAtIndex:indexPath.row]objectForKey:@"name"];//textfieldname
    txtcity.text=[[arrmaindata objectAtIndex:indexPath.row]objectForKey:@"city"];//textfieldcity
}

@end
