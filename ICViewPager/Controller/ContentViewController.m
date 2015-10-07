//
//  ContentViewController.m
//  ICViewPager
//
//  Created by Ilter Cengiz on 28/08/2013.
//  Copyright (c) 2013 Ilter Cengiz. All rights reserved.
//

#import "ContentViewController.h"
#import "BlackGradientView.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    
    BlackGradientView *blackView = [[BlackGradientView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    blackView.alpha = 0.1;
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(125, 125, 50, 50)];
    redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redView];
    
    [self.view insertSubview:blackView aboveSubview:redView];
    
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
