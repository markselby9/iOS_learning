//
//  MSBlockViewController.h
//  learnDelegate
//
//  Created by 冯超逸 on 14-8-7.
//  Copyright (c) 2014年 com.markselby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSBlockViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, copy) void (^textBlock)(NSString* string);
@property (nonatomic, strong) NSString* oldstring;

@end
