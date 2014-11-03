//
//  ViewController.m
//  PrimaryOverlayReplacementTest
//
//  Created by Tim Ekl on 2014.11.03.
//  Copyright (c) 2014 The Omni Group. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) UIColor *color;

@end

@implementation ViewController

- (id)initWithColor:(UIColor *)color;
{
    if ((self = [super initWithNibName:nil bundle:nil])) {
        self.color = color;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = self.color;
}

@end
