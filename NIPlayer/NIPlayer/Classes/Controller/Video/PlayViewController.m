//
//  PlayViewController.m
//  NIPlayer
//
//  Created by zhouen on 2017/6/16.
//  Copyright © 2017年 zhouen. All rights reserved.
//

#import "PlayViewController.h"
#import "NIPlayer.h"

@interface PlayViewController ()
@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *playView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 245)];
    [self.view addSubview:playView];

    [[NIPlayer sharedPlayer] playWithUrl:_url onView:playView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [[NIPlayer sharedPlayer] releasePlayer];
}

- (BOOL)shouldAutorotate {
    return NO;
}

@end