//
//  CustomView.m
//  Finger Paint
//
//  Created by Anthony Coelho on 2016-05-13.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "CustomView.h"
#import "Line.h"


@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype) init{
    self = [super init];
    if (self) {
    _lines = [NSMutableArray new];
    }
    return self;
}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    int touchCount = (int)[[event allTouches]count];
    
    if (touchCount == 1) {
        
        UITouch *touch = [[event allTouches] anyObject];
        
        Line *newLine = [[Line alloc] initWithStart:[touch previousLocationInView:self] End:[touch locationInView:self]];
                         
        [self.lines addObject:newLine];
        
        [self setNeedsLayout];
        [self setNeedsDisplay];

    }
    else {
        NSLog(@"Use one finger to draw");
    }
    
}

                    
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [self chosenColor].CGColor);
    CGContextSetLineWidth(context, 6.0f);
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineJoin(UIGraphicsGetCurrentContext(), kCGLineJoinRound);
    
    
    for (Line *line in self.lines) {
        CGContextMoveToPoint(context, line.start.x , line.start.y);
        CGContextAddLineToPoint(context, line.end.x, line.end.y);
    }
    CGContextStrokePath(context);
}




@end
