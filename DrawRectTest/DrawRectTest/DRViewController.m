//
//  DRViewController.m
//  DrawRectTest
//
//  Created by huichen.xyh on 9/18/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//


#import "DRViewController.h"
#import "DRView.h"


@interface DRViewController ()

@property (nonatomic, strong) DRView *rootView;

@end

@implementation DRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    DRView *rootView = [[DRView alloc] initWithFrame:CGRectMake(10, 50, 300, 300)];
    rootView.name = @"Root DRView";
    rootView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:rootView];
    _rootView = rootView;
    
    DRView *sub1View = [[DRView alloc] initWithFrame:CGRectMake(10, 10, 280, 280)];
    sub1View.name = @"subView is sub of rootDRView";
    sub1View.backgroundColor = [UIColor greenColor];
    [rootView addSubview:sub1View];
    
    DRView *sub2View = [[DRView alloc] initWithFrame:CGRectMake(10, 10, 260, 260)];
    sub2View.name = @"sub2View is sub of sub1View";
    sub2View.backgroundColor = [UIColor yellowColor];
    [sub1View addSubview:sub2View];
    
    
    
    
    DRView *sub3View = [[DRView alloc] initWithFrame:CGRectMake(50, 50, 40, 40)];//:CGRectMake(10, 10, 240, 240)];
    sub3View.name = @"sub3View is sub of sub2View";
    sub3View.backgroundColor = [UIColor redColor];
//    sub3View.alpha = 0.5f;
    [sub2View addSubview:sub3View];
    
    DRView *sub4View = [[DRView alloc] initWithFrame:CGRectMake(50, 50, 40, 40)];
    sub4View.name = @"sub4View is sub of sub2View";
//    sub4View.alpha = 0.5f;
    sub4View.backgroundColor = [UIColor blueColor];
    [sub2View addSubview:sub4View];
    
    DRView *sub5View = [[DRView alloc] initWithFrame:CGRectMake(50, 50, 40, 40)];//:CGRectMake(90, 90, 20, 20)];
    sub5View.name = @"sub5View is sub of sub2View";
//    sub5View.alpha = 0.5f;
    sub5View.backgroundColor = [UIColor yellowColor];
    [sub2View addSubview:sub5View];
    
    DRView *sub6View = [[DRView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    sub6View.name = @"sub6View is sub of sub5View";
    sub6View.backgroundColor = [UIColor redColor];
    [sub5View addSubview:sub6View];
    
    DRView *sub7View = [[DRView alloc] initWithFrame:CGRectMake(200, 400, 50, 50)];
    sub7View.name = @"sub7View is sub of rootDRView";
    [rootView addSubview:sub7View];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [button addTarget:self action:@selector(pressedRefreshButton:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(50, 400, 50, 50);
    [self.view addSubview:button];
}

- (IBAction)pressedRefreshButton:(UIButton *)theButton
{
//
//    CGRect frame = _rootView.frame;
//    frame.origin.x++;
//    _rootView.frame = frame;
////
////    [_rootView setNeedsDisplay];
//    [self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
