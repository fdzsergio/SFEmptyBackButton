//
//  Tests.m
//  Tests
//
//  Created by Sergio Fernández Durán on 12/13/15.
//  Copyright © 2015 fdzsergio. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "SFViewController.h"

@import SFEmptyBackButton;

@interface Tests : XCTestCase

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation Tests

- (void)setUp {
    [super setUp];

    self.navigationController = [[UINavigationController alloc] initWithRootViewController:[SFViewController new]];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testViewControllerHasTitle {

    BOOL equalTitles = [self.navigationController.title isEqualToString:NSStringFromClass([SFViewController class])];

    XCTAssertTrue(equalTitles);
}

- (void)testViewControllerHasRemovedTitle {
    [SFEmptyBackButton removeTitleFromAllViewControllers];

    [self.navigationController pushViewController:[SFViewController new] animated:NO];

    XCTAssertEqual(self.navigationController.presentedViewController.navigationItem.backBarButtonItem.title, nil);
}

- (void)testViewControllerHasRemovedAllTitles {
    [SFEmptyBackButton removeTitleFromViewControllers:@[SFViewController.class]];

    [self.navigationController pushViewController:[SFViewController new] animated:NO];
    [self.navigationController pushViewController:[SFViewController new] animated:NO];
    [self.navigationController pushViewController:[SFViewController new] animated:NO];
    [self.navigationController pushViewController:[SFViewController new] animated:NO];

    XCTAssertEqual(self.navigationController.presentedViewController.navigationItem.backBarButtonItem.title, nil);
}

- (void)testViewControllerChangesNothingIfRemoveFromBarButtom {
    [SFEmptyBackButton removeTitleFromViewControllers:@[UIButton.class]];

    [self.navigationController pushViewController:[SFViewController new] animated:NO];

    BOOL equalTitles = [self.navigationController.title isEqualToString:NSStringFromClass([SFViewController class])];

    XCTAssertTrue(equalTitles);
}

@end
