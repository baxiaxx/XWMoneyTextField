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
    
    CGRect frame = CGRectMake(30,100,[UIScreen mainScreen].bounds.size.width - 60,44);
    XWMoneyTextField *tf = [[XWMoneyTextField alloc] initWithFrame:frame];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"请输入金额";
    tf.keyboardType = UIKeyboardTypeDecimalPad;
    tf.limit.delegate = self;
    tf.limit.max = @"99999.99";
    [self.view addSubview:tf];
    
}

#pragma mark - XWMoneyTextFieldLimitDelegate
- (void)xwMoneyTextFieldValueChanged:(UITextField *)textField{
    
    NSLog(@"xwMoneyTextFieldValueChanged: %@",textField.text);
}

- (void)xwMoneyTextFieldDidEndEditing:(UITextField *)textField{
    
    NSLog(@"xwMoneyTextFieldDidEndEditing: %@",textField.text);
}

@end
