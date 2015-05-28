//
//  AutosizingLabel.h
//  Tuned-Inn
//
//  Created by Kalpit Gajera on 28/05/15.
//  Copyright (c) 2015 Kalpit Gajera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface AutosizingLabel : UILabel {
    double minHeight;
}

@property (nonatomic) double minHeight;

- (void)calculateSize;

@end

