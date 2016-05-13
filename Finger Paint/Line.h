//
//  Line.h
//  Finger Paint
//
//  Created by Anthony Coelho on 2016-05-13.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Line : NSObject

@property CGPoint start;
@property CGPoint end;

-(instancetype)initWithStart:(CGPoint)start End:(CGPoint)end;


@end
