//
//  CTMediator+ModuleB.m
//  CTMediator
//
//  Created by FlyingFish on 2021/11/19.
//

#import "CTMediator+ModuleB.h"

#import "CTMediator.h"

NSString *const kFSMediatorTargetModuleB = @"B";
NSString *const kFSMediatorActionGetPage = @"getHome";

@implementation CTMediator (ModuleB)


- (UIViewController *)getHomePage:(NSString * _Nullable)desc {
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setValue:desc forKey:@"desc"];
    return [[CTMediator sharedInstance] performTarget:kFSMediatorTargetModuleB
               action:kFSMediatorActionGetPage
               params:params
    shouldCacheTarget:NO];
}
@end
