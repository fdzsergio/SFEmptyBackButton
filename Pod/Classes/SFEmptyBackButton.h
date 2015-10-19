//
//  SFEmptyBackButton.h
//  Pods
//
//  Created by Sergio Fernández Durán on 10/17/15.
//
//

#import <UIKit/UIKit.h>

@interface SFEmptyBackButton : NSObject

+ (void)removeTitleFromAllViewControllers;
+ (void)removeTitleFromViewControllers:(NSArray *)viewControllers;

@end
