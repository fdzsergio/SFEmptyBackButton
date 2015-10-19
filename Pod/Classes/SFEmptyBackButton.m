//
//  SFEmptyBackButton.m
//  Pods
//
//  Created by Sergio Fernández Durán on 10/17/15.
//
//

#import "SFEmptyBackButton.h"

#import "Aspects.h"

@implementation SFEmptyBackButton

+ (void)removeTitleFromAllViewControllers
{
    [UIViewController aspect_hookSelector:@selector(viewDidLoad)
                              withOptions:AspectPositionBefore
                               usingBlock:^(id<AspectInfo> aspectInfo) {

                                   UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

                                   UIViewController *viewController = aspectInfo.instance;
                                   [viewController.navigationItem setBackBarButtonItem:backButtonItem];

                               } error:NULL];
}

+ (void)removeTitleFromViewControllers:(NSArray *)viewControllers
{
    [viewControllers enumerateObjectsUsingBlock:^(Class klass, NSUInteger idx, BOOL * _Nonnull stop) {
        if (![klass isSubclassOfClass:UIViewController.class])
            *stop = YES;

        [klass aspect_hookSelector:@selector(viewDidLoad)
                       withOptions:AspectPositionBefore
                        usingBlock:^(id<AspectInfo> aspectInfo) {

                            UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

                            UIViewController *viewController = aspectInfo.instance;
                            [viewController.navigationItem setBackBarButtonItem:backButtonItem];
                            
                        } error:NULL];
    }];
}

@end
