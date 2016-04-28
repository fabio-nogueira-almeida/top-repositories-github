//
//  GHOwnerTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHOwner.h"

@interface GHOwnerTest : XCTestCase

@end

@implementation GHOwnerTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldMapUserName {
    GHOwner *owner =
    [[GHOwner alloc] initWithDictionary:@{GHOwnerLogin : @"example"}];
    XCTAssertEqualObjects(owner.login, @"example");
}

- (void)testShouldNotMapUserName {
    GHOwner *owner =
    [[GHOwner alloc] initWithDictionary:@{GHOwnerLogin : @"example"}];
    XCTAssertNotEqualObjects(owner.login, @"error");
}

- (void)testShouldMapAvatarURL {
    GHOwner *owner =
    [[GHOwner alloc] initWithDictionary:@{GHOwnerAvatarURL : @"example"}];
    XCTAssertEqualObjects(owner.avatarURL, @"example");
}

- (void)testShouldNotMapAvatarURL {
    GHOwner *owner =
    [[GHOwner alloc] initWithDictionary:@{GHOwnerAvatarURL : @"example"}];
    XCTAssertNotEqualObjects(owner.avatarURL, @"error");
}

@end
