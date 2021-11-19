//
//  CTMediator+ModuleA.h
//  CTMediator
//
//  Created by FlyingFish on 2021/11/19.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleA)

- (UIViewController *)getHomeVC:(NSString * _Nullable)desc;

@end

NS_ASSUME_NONNULL_END
