# XWMoneyTextField

**保证UITextField输入金额的合法性，集成非常简单，10行以内，实现一个代理即可**。

效果如下：

![XWPageViewControlle](/XWPageViewController.gif)


```
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
```

