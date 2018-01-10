//
//  PickerViewController.m
//  durgasoftPractice
//
//  Created by hp ios on 11/13/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController
@synthesize pickData1,pickData2,txtF1,txtF2;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    pickData1=[[NSMutableArray alloc]
               initWithObjects:@"AA",@"BB",@"CC", nil];
    pickData2=[[NSMutableArray alloc]
               initWithObjects:@"11",@"22",@"33", nil];
 
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
     if(component==0)
     {
         return pickData1.count;
 
     }
    if(component==1)
    {
    
     return pickData2.count;
    
    }
    return component;
 }
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{

    if(component==0)
    {
        return [pickData1 objectAtIndex:row];
        
    }
    if(component==1)
    {
        return [pickData2 objectAtIndex:row];
        
    }
    return 0;

}
-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{

    if(component==0)
    {
    
        self.txtF1.text=[pickData1 objectAtIndex:row];
    }
    if(component==1)
    {
        
        self.txtF2.text=[pickData2 objectAtIndex:row];
    }

}




@end

