//
//  GHUserTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHUser.h"

@interface GHUserTest : XCTestCase

@end

@implementation GHUserTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldMapUserName {
    GHUser *user =
    [[GHUser alloc] initWithDictionary:@{GHUserUserName : @"example"}];
    XCTAssertEqualObjects(user.userName, @"example");
}

- (void)testShouldNotMapUserName {
    GHUser *user =
    [[GHUser alloc] initWithDictionary:@{GHUserUserName : @"example"}];
    XCTAssertNotEqualObjects(user.userName, @"error");
}

- (void)testShouldMapAvatarURL {
    GHUser *user =
    [[GHUser alloc] initWithDictionary:@{GHUserAvatarURL : @"example"}];
    XCTAssertEqualObjects(user.avatarURL, @"example");
}

- (void)testShouldNotMapAvatarURL {
    GHUser *user =
    [[GHUser alloc] initWithDictionary:@{GHUserAvatarURL : @"example"}];
    XCTAssertNotEqualObjects(user.avatarURL, @"error");
}

@end
