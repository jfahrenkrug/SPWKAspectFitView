//
//  ViewController.m
//  AspectFitTest
//
//  Created by Fahrenkrug, Johannes on 9/26/14.
//  Copyright (c) 2014 Springenwerk. All rights reserved.
//

#import "ViewController.h"
#import "SPWKAspectFitView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SPWKAspectFitView *topAspectFitView;
@property (weak, nonatomic) IBOutlet SPWKAspectFitView *bottomAspectFitView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *top = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 100)];
    top.backgroundColor = [UIColor lightGrayColor];
    
    UIView *bottom = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 500)];
    bottom.backgroundColor = [UIColor greenColor];
    
    _topAspectFitView.childView = top;
    _bottomAspectFitView.childView = bottom;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
