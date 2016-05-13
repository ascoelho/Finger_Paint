//
//  ViewController.m
//  Finger Paint
//
//  Created by Anthony Coelho on 2016-05-13.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.colorsArray = [[NSArray alloc] initWithObjects:[UIColor blackColor], [UIColor redColor], [UIColor orangeColor], nil];
    
    self.customView = [[CustomView alloc] init];
    CGRect customViewFrame = self.view.frame;
    customViewFrame.size.height = self.view.frame.size.height - self.colorWhellImageView.frame.size.height - self.colorSlider.frame.size.height;
    
    self.customView.frame =customViewFrame;
    self.customView.backgroundColor = [UIColor whiteColor];
    
    
    
    [self.view addSubview:self.customView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(UISlider *)slider {
    
    int sliderValue;
    sliderValue = roundf(slider.value);
    [slider setValue:sliderValue animated:YES];
    
    self.customView.chosenColor = [self.colorsArray objectAtIndex:slider.value];
    
}



@end
