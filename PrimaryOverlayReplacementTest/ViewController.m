// Copyright 2014 Omni Development, Inc. All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.

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
