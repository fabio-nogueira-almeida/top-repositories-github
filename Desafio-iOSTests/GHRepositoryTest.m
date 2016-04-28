//
//  GHRepositoryTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 28/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHRepository.h"

@interface GHRepositoryTest : XCTestCase

@end

@implementation GHRepositoryTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldMapCodigo {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryCodigo : @"example"}];
    XCTAssertEqualObjects(repository.codigo, @"example");
}

- (void)testShouldNotMapCodigo {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryCodigo : @"example"}];
    XCTAssertNotEqualObjects(repository.codigo, @"error");
}

- (void)testShouldMapName {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryName : @"example"}];
    XCTAssertEqualObjects(repository.name, @"example");
}

- (void)testShouldNotMapName {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryName : @"example"}];
    XCTAssertNotEqualObjects(repository.name, @"error");
}

- (void)testShouldMapDescription {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryRepositoryDescription : @"example"}];
    XCTAssertEqualObjects(repository.repositoryDescription, @"example");
}

- (void)testShouldNotMapDescription {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryRepositoryDescription : @"example"}];
    XCTAssertNotEqualObjects(repository.repositoryDescription, @"error");
}

- (void)testShouldMapForks {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryForks : @"example"}];
    XCTAssertEqualObjects(repository.forks, @"example");
}

- (void)testShouldNotMapForks {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryForks : @"example"}];
    XCTAssertNotEqualObjects(repository.forks, @"error");
}

- (void)testShouldMapStars {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryStars : @"example"}];
    XCTAssertEqualObjects(repository.stars, @"example");
}

- (void)testShouldNotMapStars {
    GHRepository *repository =
    [[GHRepository alloc] initWithDictionary:@{GHRepositoryStars : @"example"}];
    XCTAssertNotEqualObjects(repository.stars, @"error");
}

@end
