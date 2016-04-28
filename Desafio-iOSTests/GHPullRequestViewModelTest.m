//
//  GHPullRequestViewModelTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHPullRequest.h"
#import "GHPullRequestViewModel.h"

@interface GHPullRequestViewModelTest : XCTestCase

@property (strong, nonatomic) GHPullRequestViewModel *viewModel;


@end

@implementation GHPullRequestViewModelTest


#pragma mark - Private

- (void)setupViewModel {
    GHPullRequest *pullRequest = [[GHPullRequest alloc] init];
    pullRequest.title = @"fix bug";
    pullRequest.body = @"some big bug";

    GHUser *user = [[GHUser alloc] init];
    user.userName = @"fabiotk";
    user.avatarURL = @"https://avatars3.githubusercontent.com/u/1563019?v=3&s=460";
    pullRequest.user = user;
    
    self.viewModel = [[GHPullRequestViewModel alloc] initWithModel:pullRequest];
}

#pragma mark - Tests

- (void)setUp {
    [super setUp];
    [self setupViewModel];
}

- (void)testShouldVerifyIfPropertiesIsNotNil {
    XCTAssertNotNil(self.viewModel.title);
    XCTAssertNotNil(self.viewModel.body);
    XCTAssertNotNil(self.viewModel.username);
    XCTAssertNotNil(self.viewModel.userImageURL);
}

- (void)testShouldVerifyUserImageIsURLType {
    XCTAssertEqual([self.viewModel.userImageURL class], [NSURL class],);
}

@end
