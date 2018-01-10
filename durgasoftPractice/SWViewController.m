//
//  SWViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/17/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "SWViewController.h"

@interface SWViewController ()

@end

@implementation SWViewController
@synthesize lblmin,lblsec,lblmili,strmilli,strmin,strsec,strhistory,table,arrdata;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrdata=[[NSMutableArray alloc]init];
    milli=0;
    sec=0;
    min=0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrdata.count;


}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSString *strdata=[arrdata objectAtIndex:indexPath.row];
    UILabel *label1=(UILabel *)[cell viewWithTag:1];
    label1.text=strdata;
    return cell;

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)helpermethod
{
    milli=milli+1;
    if(milli==100)
    {
        milli=0;
        sec=sec+1;
        if(sec==60)
        {
        
            sec=0;
            min=min+1;
            
        }
    
    }
    if(milli<10)
    {
        strmilli=[NSString stringWithFormat:@"%i",milli];
    }
    else
    {
        strmilli=[NSString stringWithFormat:@"%i",milli];

    }
    
    if(sec<10)
    {
    strsec=[NSString stringWithFormat:@"%i",sec];
    }
    else
    {
        strsec=[NSString stringWithFormat:@"%i",sec];
        
    }
    
    
    if(min<10)
    {
        strmin=[NSString stringWithFormat:@"%i",min];
    }
    else
    {
        strmin=[NSString stringWithFormat:@"%i",min];
        
    }
    lblmin.text=strmin;
    lblsec.text=strsec;
    lblmili.text=strmilli;
}
- (IBAction)start:(id)sender {
    
    timer=[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(helpermethod) userInfo:nil repeats:YES];
 }

- (IBAction)stop:(id)sender {

    [timer invalidate];
}

- (IBAction)split:(id)sender {
    strhistory=[NSString stringWithFormat:@"%@:%@:%@",strmin,strsec,strmilli];
    [arrdata addObject:strhistory];
    [table reloadData];
}

- (IBAction)reset:(id)sender {
    [timer invalidate];
    lblmili.text=@"00";
    lblsec.text=@"00";
    lblmin.text=@"00";
    [arrdata removeAllObjects];
    [table reloadData];
    
}
@end
