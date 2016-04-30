//
//  GHPullRequestTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHPullRequest.h"

@interface GHPullRequestTest : XCTestCase

@end

@implementation GHPullRequestTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldMapTitle {
    GHPullRequest *object =
    [[GHPullRequest alloc] initWithDictionary:@{GHPullRequestTitle : @"example"}];
    XCTAssertEqualObjects(object.title, @"example");
}

- (void)testShouldNotMapTitle {
    GHPullRequest *object =
    [[GHPullRequest alloc] initWithDictionary:@{GHPullRequestTitle : @"example"}];
    XCTAssertNotEqualObjects(object.title, @"error");
}

- (void)testShouldMapBody {
    GHPullRequest *object =
    [[GHPullRequest alloc] initWithDictionary:@{GHPullRequestBody : @"example"}];
    XCTAssertEqualObjects(object.body, @"example");
}

- (void)testShouldNotMapBody {
    GHPullRequest *object =
    [[GHPullRequest alloc] initWithDictionary:@{GHPullRequestBody : @"example"}];
    XCTAssertNotEqualObjects(object.body, @"error");
}

- (void)testShouldMapHtmlURL {
    GHPullRequest *object =
    [[GHPullRequest alloc] initWithDictionary:@{GHPullRequestHtmlURL : @"example"}];
    XCTAssertEqualObjects(object.htmlURL, @"example");
}

- (void)testShouldNotMapHtmlURL {
    GHPullRequest *object =
    [[GHPullRequest alloc] initWithDictionary:@{GHPullRequestHtmlURL : @"example"}];
    XCTAssertNotEqualObjects(object.htmlURL, @"error");
}

@end
