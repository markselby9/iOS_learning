//
//  MSViewController.h
//  learnDelegate
//
//  Created by 冯超逸 on 14-8-6.
//  Copyright (c) 2014年 com.markselby. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol testDelegate

-(void)alertYourColor:(NSString*)color;

@end

@interface MSViewController : UIViewController

@property(nonatomic, strong) id<testDelegate> delegate;
-(IBAction)selector1:(id)sender;
-(IBAction)selector2:(id)sender;

@end
