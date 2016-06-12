//
// UITextField+Additions.m
// Copyright © 2016 Rushi Sangani All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "UITextField+Additions.h"

@implementation UITextField (Additions)

#pragma mark - TextField Padding

-(void)setLeftPadding:(CGFloat)padding {
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, padding, self.frame.size.height)];
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
}

-(void)setRightPadding:(CGFloat)padding {
    
    UIView *rightPaddingView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, padding, self.frame.size.height)];
    
    self.rightView = rightPaddingView;
    self.rightViewMode = UITextFieldViewModeAlways;
}

-(void)setPlaceholderText:(NSString *)text andColor:(UIColor *)color {
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:text attributes:@{ NSForegroundColorAttributeName : color }];
    self.attributedPlaceholder = string;
}

@end
