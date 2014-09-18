//
//  DRView.m
//  DrawRectTest
//
//  Created by huichen.xyh on 9/18/14.
//  Copyright (c) 2014 huichen.xyh. All rights reserved.
//

#import "DRView.h"

@implementation DRView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.opaque = YES;
    }
    return self;
}

//*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    NSLog(@"My view name is: %@", _name);
}
//*/

@end
