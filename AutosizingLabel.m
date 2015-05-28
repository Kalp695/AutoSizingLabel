//
//  AutosizingLabel.m
//  Tuned-Inn
//
//  Created by Kalpit Gajera on 28/05/15.
//  Copyright (c) 2015 Kalpit Gajera. All rights reserved.
//

#define MIN_HEIGHT 10.0f

#import "AutosizingLabel.h"

@implementation AutosizingLabel

@synthesize minHeight;

- (id)init {
    if ([super init]) {
        self.minHeight = MIN_HEIGHT;
    }
    
    return self;
}


- (void)setText:(NSString *)text {
    [super setText:text];
    
    [self calculateSize];
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    
    [self calculateSize];
}
- (void)calculateSize {
    CGSize constraint = CGSizeMake(self.frame.size.width, 20000.0f);
    CGSize size = [self.text sizeWithFont:self.font constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
    
    [self setLineBreakMode:UILineBreakModeWordWrap];
    [self setAdjustsFontSizeToFitWidth:NO];
    [self setNumberOfLines:0];
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, MAX(size.height, MIN_HEIGHT))];
    
}

@end