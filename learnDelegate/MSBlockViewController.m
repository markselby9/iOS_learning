//
//  MSBlockViewController.m
//  learnDelegate
//
//  Created by 冯超逸 on 14-8-7.
//  Copyright (c) 2014年 com.markselby. All rights reserved.
//

#import "MSBlockViewController.h"

@interface MSBlockViewController ()

@property (nonatomic, strong) UITextField *field;
@property (nonatomic, strong) NSString* str;

@end

@implementation MSBlockViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _field = [[UITextField alloc]initWithFrame:CGRectMake(10, 100, 320, 200)];
        [_field setBorderStyle:UITextBorderStyleRoundedRect]; //外框类型
        _field.autocorrectionType = UITextAutocorrectionTypeNo;
        _field.autocapitalizationType = UITextAutocapitalizationTypeNone;
        _field.returnKeyType = UIReturnKeyDone;
        _field.clearButtonMode = UITextFieldViewModeWhileEditing; //编辑时会出现个修改X
        _field.delegate = self;
        [self.view addSubview:_field];
        
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(10, 310, 320, 50)];
        [btn setTitle:@"commit" forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor greenColor]];
        [btn addTarget:self action:@selector(selector4:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (_oldstring){
        [_field setText:_oldstring];
        [_field reloadInputViews];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selector4:(id)sender{
    _str = [_field text];
    if (self.textBlock){
        _textBlock(_str);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

//开始编辑时界面整体上移
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    CGRect frame = self.view.frame;
    frame.origin.y -= 100;
    frame.size.height += 100;
    self.view.frame = frame;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    CGRect frame = self.view.frame;
    frame.origin.y += 100;
    frame.size.height -= 100;
    self.view.frame = frame;
    _str = [textField text];
    [textField resignFirstResponder];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if ([string isEqualToString:@"\n"]){
        [textField resignFirstResponder];
        return NO;
    }
    if ([string length]> 50){
        return NO;
    }
//    _str = [textField text];
    return YES;
    
}
@end
