//
//  GHRepositoryResponseTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 28/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "GHRepositoryResponse.h"

@interface GHRepositoryResponseTest : XCTestCase

@end

@implementation GHRepositoryResponseTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldMapUserTotalCount {
    GHRepositoryResponse *object =
    [[GHRepositoryResponse alloc] initWithDictionary:@{GHRepositoryResponseTotal : @"example"}];
    XCTAssertEqualObjects(object.totalCount , @"example");
}

- (void)testShouldNotMapTotalCount {
    GHRepositoryResponse *object =
    [[GHRepositoryResponse alloc] initWithDictionary:@{GHRepositoryResponseTotal : @"example"}];
    XCTAssertNotEqualObjects(object.totalCount, @"error");
}

- (void)testShouldMapUserStatus {
    GHRepositoryResponse *object =
    [[GHRepositoryResponse alloc] initWithDictionary:@{GHRepositoryResponseStatus : @YES}];
    XCTAssertEqual([NSNumber numberWithBool:object.incompleteStatus] , @YES);
}

- (void)testShouldNotMapStatus {
    GHRepositoryResponse *object =
    [[GHRepositoryResponse alloc] initWithDictionary:@{GHRepositoryResponseStatus : @YES}];
    XCTAssertNotEqual(object.incompleteStatus, NO);
}

@end
