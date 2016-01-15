//
//  UILabel+Ext.m
//
//  Created by 菜酱 on 15/9/22.
//  Copyright (c) 2015年 菜酱. All rights reserved.
//

#import "UILabel+Ext.h"

@implementation UILabel (Ext)

NSMutableAttributedString * attributedString;
NSMutableParagraphStyle * paragraphStyle;

///< 设置行间距
- (void)setLineSpace:(CGFloat)space {
    attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    [self setAttributedText:attributedString];
    [self sizeToFit];
}

///< 返回当前文字尺寸
- (CGSize)getTextSize {
    // 设置一个行高上限
    CGSize size = CGSizeMake(self.width, 12800);
    // 计算实际Frame大小，并将Label的Frame变成实际大小
    CGRect rect = [self.text boundingRectWithSize:size
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{NSFontAttributeName:self.font,
                                                    NSParagraphStyleAttributeName:paragraphStyle}
                                          context:nil];
    [self sizeToFit];
    return rect.size;
}

@end