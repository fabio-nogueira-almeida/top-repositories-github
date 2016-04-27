//
//  GHDataSourceTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <AFNetworking/AFNetworking.h>

#import "GHRepositoryResponse.h"

@interface GHDataSourceTest : XCTestCase

@property (strong, nonatomic) AFHTTPSessionManager *manager;

@end

@implementation GHDataSourceTest

#pragma mark - Getter

- (AFHTTPSessionManager *)manager {
    if (!_manager) {
        _manager = [[AFHTTPSessionManager manager] initWithBaseURL:[NSURL URLWithString:@"https://api.github.com/"]];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    
    return _manager;
}

#pragma mark - Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRepositoryFetch {
    XCTestExpectation *expectation = [self expectationWithDescription:@"fetching repositories"];
    
    [self.manager GET:@"https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1"
           parameters:nil
             progress:nil
    success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)task.response;
        XCTAssertEqual(httpResponse.statusCode, 200);
        [expectation fulfill];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        XCTFail(@"failure testRepositoryFetch");
    }];

    [self waitForExpectationsWithTimeout:5 handler:nil];
}

- (void)testPullRequestFetch {
    XCTestExpectation *expectation = [self expectationWithDescription:@"fetching repositories"];
    
    [self.manager GET:@"https://api.github.com/repos/facebook/react-native/pulls"
           parameters:nil
             progress:nil
    success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)task.response;
        XCTAssertEqual(httpResponse.statusCode, 200);
        [expectation fulfill];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        XCTFail(@"failure testPullRequyestFetch");
    }];
    
    [self waitForExpectationsWithTimeout:5 handler:nil];
}

@end
