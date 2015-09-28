//
//  MBProgressHUD+Ext.m
//
//
//  Created by 菜酱 on 15/9/22.
//  Copyright (c) 2015年 菜酱. All rights reserved.
//

#import "MBProgressHUD+Ext.h"

@implementation MBProgressHUD (Ext)

+ (void)showHUDWithText:(NSString *)text InView:(UIView *)view {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = text;
    hud.alpha = 0.85f;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2];
    
}

@end