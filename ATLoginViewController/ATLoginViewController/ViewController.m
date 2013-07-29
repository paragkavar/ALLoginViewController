//
//  ViewController.m
//  ATLoginViewController
//
//  Created by Ashish Tripathi on 29/07/13.
//  Copyright (c) 2013 Ashish Tripathi. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *imageView = [[NSMutableArray alloc] init];
    for(i = 0; i < 4; i++) {
        UIImage *anImage = [UIImage imageNamed:[NSString stringWithFormat:@"login%d_image.png",i]];
        if(anImage) {
            [imageView addObject:anImage];
        }
    }
//
//    CATransition *transition = [CATransition animation];
//    transition.duration = 10.f;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    transition.type = kCATransitionFromLeft;
//    [_imgView.layer addAnimation:transition forKey:nil];
    _imgView.animationImages = imageView;
    _imgView.animationDuration = 10.0;
    _imgView.animationRepeatCount = 50;
    [_imgView startAnimating];
    
}
- (void)fadeInImage
{
    [UIView beginAnimations:@"fade in" context:nil];
    [UIView setAnimationDuration:1.0];
    _imgView.alpha = 1.0;
    [UIView commitAnimations];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
