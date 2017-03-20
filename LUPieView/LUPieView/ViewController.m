//
//  ViewController.m
//  LUPieView
//
//  Created by lu_ios on 17/3/20.
//  Copyright © 2017年 luchanghao. All rights reserved.
//

#import "ViewController.h"
#import "EPDrawPieView.h"
#import "UIView+Frame.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define COLOR_HEX(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    EPDrawPieView *drawPieView = [[EPDrawPieView alloc] initWithFrame:CGRectMake(0, 40, self.view.width, 250)];
    [self.view addSubview:drawPieView];
    
    
    
    EPDrawPieModel *model = [[EPDrawPieModel alloc] init];
    model.valueArray = [NSMutableArray arrayWithArray: @[@(85),@(75),@(100),@(60)]];
    model.colorArray = [NSMutableArray arrayWithArray: @[COLOR_HEX(0x84d947),COLOR_HEX(0xfa8e4e),COLOR_HEX(0xd94784),COLOR_HEX(0xfa4e8e)]];
    model.radius = (127.5 + 40 )/3;
    model.lineWidth = (194 - 127.5 + 25)/3;
    if (SCREEN_WIDTH <= 320) {
        model.radius = (127.5 )/3;
        model.lineWidth = (194 - 127.5 )/3;
    }
    [model setForFrame];
    drawPieView.model = model;
    drawPieView.selectIndex = 0;//控制点击放大

    
}

@end
