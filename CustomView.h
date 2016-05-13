//
//  CustomView.h
//  Finger Paint
//
//  Created by Anthony Coelho on 2016-05-13.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"

@interface CustomView : UIView


@property (strong, nonatomic) NSMutableArray *lines;
@property (weak, nonatomic) Line *currentLine;
@property (weak, nonatomic) UIColor *chosenColor;



@end
