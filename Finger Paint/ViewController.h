//
//  ViewController.h
//  Finger Paint
//
//  Created by Anthony Coelho on 2016-05-13.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomView.h"


@interface ViewController : UIViewController
@property (strong, nonatomic) CustomView *customView;
@property (weak, nonatomic) IBOutlet UISlider *colorSlider;
@property (weak, nonatomic) IBOutlet UIImageView *colorWhellImageView;

@property (strong, nonatomic) NSArray *colorsArray;


@end

