//
//  MSViewController.m
//  learnDelegate
//
//  Created by 冯超逸 on 14-8-6.
//  Copyright (c) 2014年 com.markselby. All rights reserved.
//

#import "MSViewController.h"
#import "MSSpeaker.h"

@interface MSViewController ()

@end

@implementation MSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,480)];
        UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 40, 100, 50)];
        UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
        [btn1 setBackgroundColor:[UIColor redColor]];
        [btn2 setBackgroundColor:[UIColor blueColor]];
        [btn1 addTarget:self action:@selector(selector1:) forControlEvents:UIControlEventTouchUpInside];
        [btn2 addTarget:self action:@selector(selector2:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn1];
        [self.view addSubview:btn2];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"OK so far");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selector1:(id)sender{
    MSSpeaker *speaker1 = [[MSSpeaker alloc]init];
    self.delegate = speaker1;
    [self.delegate alertYourColor:@"red"];
}

-(IBAction)selector2:(id)sender{
    MSSpeaker *speaker1 = [[MSSpeaker alloc]init];
    self.delegate = speaker1;
    [self.delegate alertYourColor:@"blue"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
