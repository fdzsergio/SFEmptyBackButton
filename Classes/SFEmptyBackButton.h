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

/**
 `SFEmptyBackButton` is a useful library to remove text from back button and align the title in the center of 
 `UIViewController`.
 */

/**
 By default, invoke `removeTitleFromAllViewControllers` to remove all titles from `ViewControllers`.

 */
+ (void)removeTitleFromAllViewControllers;


/**
 If you want remove back title from selected `ViewControllers` invoke this method with ViewController.class array that 
 you want.

 @param array with viewControllers to empty back title

 @warning set only (NSArray<UIViewController *> *) on parameter
 */
+ (void)removeTitleFromViewControllers:(NSArray *)viewControllers;

@end