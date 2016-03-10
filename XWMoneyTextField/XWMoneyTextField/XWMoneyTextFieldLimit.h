//
//  XWMoneyTextFieldLimit.h
//  XWMoneyTextField
//
//  Created by smile.zhang on 16/3/10.
//  Copyright © 2016年 smile.zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol XWMoneyTextFieldLimitDelegate;

@interface XWMoneyTextFieldLimit : NSObject <UITextFieldDelegate>

@property (nonatomic, assign) id <XWMoneyTextFieldLimitDelegate> delegate;
- (void)valueChange:(id)sender;

@end

@protocol XWMoneyTextFieldLimitDelegate <NSObject>

- (void)valueChange:(id)sender;

@end
