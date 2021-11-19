//
//  CTMediator+ModuleA.m
//  CTMediator
//
//  Created by FlyingFish on 2021/11/19.
//

#import "CTMediator+ModuleA.h"

#import "CTMediator.h"

NSString *const kFSMediatorTargetModuleA = @"A";
NSString *const kFSMediatorActionGetHome = @"getHome";

@implementation CTMediator (ModuleA)


- (UIViewController *)getHomeVC:(NSString * _Nullable)desc {
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setValue:desc forKey:@"desc"];
    return [[CTMediator sharedInstance] performTarget:kFSMediatorTargetModuleA
               action:kFSMediatorActionGetHome
               params:params
    shouldCacheTarget:NO];
}

@end
