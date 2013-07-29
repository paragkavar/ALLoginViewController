//
//  ViewController.m
//  ATLoginViewController
//
//  Created by Ashish Tripathi on 26/07/13.
//  Copyright (c) 2013 Ashish Tripathi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.imgView setImage:[UIImage imageNamed:@"Lone_Tree_1600.jpg"]];
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(MoveImage) userInfo:nil repeats:YES];
    //aded
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}
-(void)MoveImage{
    self.imgView.center = CGPointMake(self.imgView.center.x+1.0, self.imgView.center.y);

}
@end
