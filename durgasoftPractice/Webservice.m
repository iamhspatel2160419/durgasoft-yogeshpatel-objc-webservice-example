//
//  Webservice.m
//  durgasoftPractice
//
//  Created by hp ios on 11/18/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import "Webservice.h"

@implementation Webservice

+(void) executequery:(NSString *)strurl strParams:(NSString *)params withblock:(void (^)(NSData *, NSError *))block
{

    
    
    //Step:-1 Session Create
    NSURLSessionConfiguration *defaultconfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];//New Session
    NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultconfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];//Queue is Stroing and retrieve data FIFO
    
    NSURL *urlrequest = [NSURL URLWithString:strurl];
    NSMutableURLRequest*mutablerequest = [NSMutableURLRequest requestWithURL:urlrequest];
    
    NSString * parm = params;
    [mutablerequest setHTTPMethod:@"POST"];//Adding Data is Url With Json
    [mutablerequest setHTTPBody:[parm dataUsingEncoding:NSUTF8StringEncoding]];//Data Encoding UTF-8
    NSURLSessionDataTask * task = [session dataTaskWithRequest:mutablerequest completionHandler:^(NSData *  data, NSURLResponse * response, NSError *  error) {
        if (data!=nil)
        {
            NSLog(@"Response %@", data);
            block(data,error);//Data is NSDATA and Error is NSERROR
        }
        else
        {
            NSLog(@"error");
            block(nil,error);
        }
    }];
    [task resume];



}

@end
