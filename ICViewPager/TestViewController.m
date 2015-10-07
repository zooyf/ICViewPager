//
//  TestViewController.m
//  ICViewPager
//
//  Created by YesterdayFinder on 15/10/7.
//  Copyright (c) 2015年 Ilter Cengiz. All rights reserved.
//

#import "TestViewController.h"
#import "ViewPagerController.h"
#import "ContentViewController.h"

@interface TestViewController ()<ViewPagerDelegate, ViewPagerDataSource>
@property (nonatomic, strong) ViewPagerController *VPC;
@end

@implementation TestViewController

- (void)viewDidLoad {
    
    self.VPC = [[ViewPagerController alloc] init];
    
    _VPC.dataSource = self;
    _VPC.delegate = self;
    
    self.title = @"View Pager";
    
//    // Keeps tab bar below navigation bar on iOS 7.0+
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//    }
    
    _VPC.tabWidth = 80;
    
    _VPC.tabsViewBackgroundColor = [UIColor colorWithRed:33/255.0 green:103/255.0 blue:246/255.0 alpha:1];
    
    
    self.navigationController.navigationBarHidden = YES;
    
    [self.view addSubview:_VPC.view];
//    [self addChildViewController:_VPC];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ViewPagerDataSource
- (NSUInteger)numberOfTabsForViewPager:(ViewPagerController *)viewPager {
    return 10;
}
- (UIView *)viewPager:(ViewPagerController *)viewPager viewForTabAtIndex:(NSUInteger)index {
    
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont systemFontOfSize:15];
    label.text = [NSString stringWithFormat:@"俩字"];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [label sizeToFit];
    
    return label;
}

- (UIViewController *)viewPager:(ViewPagerController *)viewPager contentViewControllerForTabAtIndex:(NSUInteger)index {
    
    ContentViewController *cvc = [self.storyboard instantiateViewControllerWithIdentifier:@"contentViewController"];
    //    ContentViewController *cvc = [[ContentViewController alloc] init];
    
    cvc.labelString = [NSString stringWithFormat:@"Content View #%i", index];
    
    return cvc;
}

#pragma mark - ViewPagerDelegate
- (CGFloat)viewPager:(ViewPagerController *)viewPager valueForOption:(ViewPagerOption)option withDefault:(CGFloat)value {
    
    switch (option) {
        case ViewPagerOptionStartFromSecondTab:
            return 1.0;
            break;
        case ViewPagerOptionCenterCurrentTab:
            return 0.0;
            break;
        case ViewPagerOptionTabLocation:
            return 1.0;
            break;
        default:
            break;
    }
    
    return value;
}
- (UIColor *)viewPager:(ViewPagerController *)viewPager colorForComponent:(ViewPagerComponent)component withDefault:(UIColor *)color {
    
    switch (component) {
        case ViewPagerIndicator:
            return [[UIColor redColor] colorWithAlphaComponent:0.64];
            break;
        default:
            break;
    }
    
    return color;
}

@end
