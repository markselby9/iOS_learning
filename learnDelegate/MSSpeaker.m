//
//  MSSpeaker.m
//  learnDelegate
//
//  Created by 冯超逸 on 14-8-6.
//  Copyright (c) 2014年 com.markselby. All rights reserved.
//

#import "MSSpeaker.h"

@implementation MSSpeaker

-(void)alertYourColor:(NSString *)color{
    UIAlertView *alert  = [[UIAlertView alloc]initWithTitle:color message:@"well done so far" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel", nil];
    [alert show];
}
@end
