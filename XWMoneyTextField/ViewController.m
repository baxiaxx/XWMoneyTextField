//
//  ViewController.m
//  XWMoneyTextField
//
//  Created by smile.zhang on 16/3/10.
//  Copyright © 2016年 smile.zhang. All rights reserved.
//

#import "ViewController.h"
#import "XWMoneyTextField.h"

@interface ViewController () <XWMoneyTextFieldLimitDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = CGRectMake(30,100,200,44);
    XWMoneyTextField *textField = [[XWMoneyTextField alloc] initWithFrame:frame];
    [textField setFont:[UIFont systemFontOfSize:22]];
    textField.textColor = [UIColor blackColor];
    textField.backgroundColor = [UIColor clearColor];
    textField.borderStyle = UITextBorderStyleNone;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter | UIControlContentHorizontalAlignmentRight;
    textField.placeholder = @"请输入金额";
    textField.tintColor = [UIColor blackColor];
    textField.textAlignment = NSTextAlignmentRight;
    textField.keyboardType = UIKeyboardTypeDecimalPad;
    textField.clearButtonMode = UITextFieldViewModeNever;
    textField.font = [UIFont systemFontOfSize:22];
    textField.limit.delegate = self;
    [self.view addSubview:textField];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XWMoneyTextFieldLimitDelegate
- (void)valueChange:(id)sender{
    
    if ([sender isKindOfClass:[XWMoneyTextField class]]) {
        
        XWMoneyTextField *tf = (XWMoneyTextField *)sender;
        NSLog(@"XWMoneyTextField ChangedValue: %@",tf.text);
    }
}

@end
