//
//  SpTableView.m
//  durgasoftPractice
//
//  Created by hp ios on 11/18/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "SpTableView.h"
#import "Webservice.h"
#import "TableViewCell.h"

@interface SpTableView ()
{
    NSString *url;
    NSMutableArray *firstName,*lastName,*age,*location,
    *following,*followers,*user_profile_image;

}

@end

@implementation SpTableView
@synthesize searchValue,myTableview;
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return firstName.count;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    TableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellpartner"];
    if(cell==nil)
    {
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellpartner"];
    
    }
    cell.txtFirstName.text=firstName[indexPath.row];
    cell.txtLastName.text=lastName[indexPath.row];
    cell.txtLocation.text=location[indexPath.row];
    cell.txtNumberOfFollowers.text= [NSString stringWithFormat:@"%@", followers[indexPath.row]];
   
    
    cell.txtNumberOfFollowings.text= [NSString stringWithFormat:@"%@", following[indexPath.row]];
    cell.txtAge.text=[NSString stringWithFormat:@"%@", age[indexPath.row]];
  
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
    dispatch_async(queue, ^{
        NSData * imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[user_profile_image[indexPath.row] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.sportPartnerImageView.image  = [UIImage imageWithData:imageData];
        });
    });
    
//    cell.sportPartnerImageView.image =[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[user_profile_image objectAtIndex:indexPath.row]]]];
  
  
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
       // Dispose of any resources that can be recreated.
}
-(void)requestData{

    url=[NSString stringWithFormat:@"http://itsallaboutleads.com/sportapp/phonegap/action_user_php/userlist.php"];
    
    NSString *stringParams=[NSString stringWithFormat:@"search=%@",searchValue.text];
    [Webservice executequery:url strParams:stringParams withblock:^(NSData *data, NSError *error) {
        
      //  NSLog(@"data=%@",data);
        
      
        if (data!=nil)
        {
            NSDictionary *maindic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"Response Data: %@", maindic);
            
            NSDictionary *reg_user= [maindic objectForKey:@"reg_user"];
            
            
            firstName=[[NSMutableArray alloc]init];
            lastName=[[NSMutableArray alloc]init];
            age=[[NSMutableArray alloc]init];
            location=[[NSMutableArray alloc]init];
            following=[[NSMutableArray alloc]init];
            followers=[[NSMutableArray alloc]init];
            user_profile_image=[[NSMutableArray alloc]init];
            
            for(NSDictionary *dic in reg_user)
            {
                
                NSString *firstNameTxt=[dic objectForKey:@"reg_firstname"];
                [firstName addObject:firstNameTxt];
                
                
                  NSString *lastNameTxt=[dic objectForKey:@"reg_lastname"];
                   [lastName addObject:lastNameTxt];
                
                NSString *user_profile_imageP=[dic objectForKey:@"user_profile_pic"];
                [user_profile_image addObject:user_profile_imageP];
                
                
                NSString *fsp_partner_location=[dic objectForKey:@"fsp_partner_location"];
                
                if(fsp_partner_location!=[NSNull null])
                {
                 [location addObject:fsp_partner_location];
                }
                else
                {
                  [location addObject:@"Not avail"];
                }
                
                    
                    NSNumber *follower=[dic objectForKey:@"followers"];
                    [followers addObject:follower];
                
             
                    NSNumber *followings=[dic objectForKey:@"followings"];
                    [following addObject:followings];

                    NSNumber *ageD=[dic objectForKey:@"age"];
                    [age addObject:ageD];
                     
            }

            [self.myTableview reloadData];
            
        }

    }];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)FindResults:(UIButton *)sender {
    [self requestData];
 
    
}
@end
