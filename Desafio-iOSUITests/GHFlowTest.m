//
//  GHFlowTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface GHFlowTest : XCTestCase

@end

@implementation GHFlowTest

- (void)setUp {
    [super setUp];
    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldValidatedMainFlow {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElementQuery *tablesQuery = app.tables;
    [tablesQuery.staticTexts[@"react-native"] tap];
    [tablesQuery.staticTexts[@"Make it easier to develop ReactNative from repo HEAD"] tap];
    [app.buttons[@"Done"] tap];
    [app.navigationBars[@"react-native"].buttons[@"Github Java"] tap];
}

@end
