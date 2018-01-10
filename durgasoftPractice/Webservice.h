//
//  Webservice.h
//  durgasoftPractice
//
//  Created by hp ios on 11/18/17.
//  Copyright © 2017 hp ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Webservice : NSObject

//+(void)executequery:(NSString *)strurl strpremeter:(NSString *)premeter withblock:(void(^)(NSData *, NSError*))block;
+(void)executequery:(NSString *)strurl strParams:(NSString *)params withblock:(void(^)(NSData *,NSError*))block;

@end
