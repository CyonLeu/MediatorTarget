//
//  FSViewController.m
//  MediatorTarget
//
//  Created by CyonLeu on 11/19/2021.
//  Copyright (c) 2021 CyonLeu. All rights reserved.
//

#import "FSViewController.h"
#import <CTMediator+ModuleA.h>

@interface FSViewController ()

@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIViewController *vc = [[CTMediator sharedInstance] getHomeVC:@"Mediator Target"];
    
    if (vc) {
        //业务中介模块，不依赖业务模块，所以vc==nil
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
