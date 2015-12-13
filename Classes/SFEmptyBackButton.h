//
//  SFEmptyBackButton.h
//  SFEmptyBackButton
//
//  Created by Sergio Fernández Durán on 12/13/15.
//  Copyright © 2015 fdzsergio. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for SFEmptyBackButton.
FOUNDATION_EXPORT double SFEmptyBackButtonVersionNumber;

//! Project version string for SFEmptyBackButton.
FOUNDATION_EXPORT const unsigned char SFEmptyBackButtonVersionString[];

@interface SFEmptyBackButton : NSObject

+ (void)removeTitleFromAllViewControllers;
+ (void)removeTitleFromViewControllers:(NSArray *)viewControllers;

@end