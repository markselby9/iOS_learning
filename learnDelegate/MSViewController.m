//
//  MSViewController.m
//  learnDelegate
//
//  Created by 冯超逸 on 14-8-6.
//  Copyright (c) 2014年 com.markselby. All rights reserved.
//

#import "MSViewController.h"
#import "MSSpeaker.h"
#import "MSBlockViewController.h"

@interface MSViewController ()

@property UILabel *label;

@end

@implementation MSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
        UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(30, 140, 240, 50)];
        UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(30, 200, 240, 50)];
        [btn1 setTitle:@"Alert your color" forState:UIControlStateNormal];
        [btn2 setTitle:@"Alert your color" forState:UIControlStateNormal];
        [btn1 setBackgroundColor:[UIColor redColor]];
        [btn2 setBackgroundColor:[UIColor blueColor]];
        [btn1 addTarget:self action:@selector(selector1:) forControlEvents:UIControlEventTouchUpInside];
        [btn2 addTarget:self action:@selector(selector2:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn1];
        [self.view addSubview:btn2];
        
        UIButton *btn3 = [[UIButton alloc]initWithFrame:CGRectMake(100, 290, 100, 50)];
        [btn3 setBackgroundColor:[UIColor greenColor]];
        [btn3 setTitle:@"Block" forState:UIControlStateNormal];
        [btn3 addTarget:self action:@selector(selector3:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn3];
        
        _label = [[UILabel alloc]initWithFrame:CGRectMake(30, 350, 299, 100)];
        [self.view addSubview:_label];
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

-(IBAction)selector3:(id)sender{
    MSBlockViewController *blockvc = [[MSBlockViewController alloc]init];
    blockvc.title = @"input text here";
    blockvc.textBlock = ^void(NSString* string){
        [_label setText:string];
    };
    [self.navigationController pushViewController:blockvc animated:YES];
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
