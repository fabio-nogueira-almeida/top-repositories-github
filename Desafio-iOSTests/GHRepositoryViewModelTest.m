//
//  GHViewModel.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHRepository.h"
#import "GHRepositoryViewModel.h"

@interface GHRepositoryViewModelTest : XCTestCase

@property (strong, nonatomic) GHRepositoryViewModel *viewModel;

@end

@implementation GHRepositoryViewModelTest

#pragma mark - Private

- (void)setupViewModel {
        GHRepository *repository = [[GHRepository alloc] init];
        repository.codigo = @1;
        repository.name = @"GHChallenge";
        repository.repositoryDescription = @"app for the GH Challenge";
        repository.forks = @123;
        repository.stars = nil;
        GHOwner *owner = [[GHOwner alloc] init];
        owner.login = @"fabiotk";
        owner.avatarURL = @"https://avatars3.githubusercontent.com/u/1563019?v=3&s=460";
        repository.owner = owner;
    
        self.viewModel = [[GHRepositoryViewModel alloc] initWithModel:repository];
}

#pragma mark - Tests

- (void)setUp {
    [super setUp];
    [self setupViewModel];
}

- (void)testShouldVerifyIfPropertiesIsNotNil {
    XCTAssertNotNil(self.viewModel.username);
    XCTAssertNotNil(self.viewModel.userImageURL);
    XCTAssertNotNil(self.viewModel.repositoryDescription);
    XCTAssertNotNil(self.viewModel.stars);
    XCTAssertNotNil(self.viewModel.forks);
}

- (void)testShouldVerifyUserImageIsURLType {
    XCTAssertEqual([self.viewModel.userImageURL class], [NSURL class],);
}

- (void)testShouldNotReturnNilIfDonstHasStars {
    XCTAssertEqualObjects(self.viewModel.stars, @"0");
}

@end
