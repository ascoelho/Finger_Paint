//
//  Line.m
//  Finger Paint
//
//  Created by Anthony Coelho on 2016-05-13.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "Line.h"

@implementation Line

-(instancetype)initWithStart:(CGPoint)start End:(CGPoint)end color:(UIColor *)color
{
    self = [super init];
    if (self) {
        _start = start;
        _end = end;
        _chosenColor = color;
    }
    return self;
}

@end
