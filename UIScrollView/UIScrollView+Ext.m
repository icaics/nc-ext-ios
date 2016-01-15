//
//  UIScrollView+Ext.m
//  iMoccaLite
//
//  Created by 菜酱 on 16/1/3.
//  Copyright © 2016年 菜酱. All rights reserved.
//

#import "UIScrollView+Ext.h"

@implementation UIScrollView_Ext

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if (gestureRecognizer.state != 0) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
