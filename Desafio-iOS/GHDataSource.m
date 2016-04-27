//
//  GHDataSource.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHDataSource.h"
#import "GHRepositoryResponse.h"
#import "GHPullRequest.h"

#import <AFNetworking/AFNetworking.h>

@interface GHDataSource ()

@property (strong, nonatomic) AFHTTPSessionManager *manager;

@end

@implementation GHDataSource

#pragma mark - Getter

- (AFHTTPSessionManager *)manager {
    if (!_manager) {
        _manager = [[AFHTTPSessionManager manager] initWithBaseURL:[NSURL URLWithString:@"https://api.github.com/"]];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    
    return _manager;
}

#pragma mark - Public

- (void)fetchRepositoryForPage:(NSInteger)page
                       success:(GHPagedRequestSuccess)successBlock {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    [self.manager GET:@"https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1"
           parameters:nil
             progress:nil
    success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
        
        GHRepositoryResponse *repositories =
        [[GHRepositoryResponse alloc] initWithDictionary:responseObject];
        NSString *totalCount = [responseObject objectForKey:@"total_count"];

        if (successBlock) {
            return successBlock(repositories.items, totalCount.integerValue);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
        NSLog(@"error: %@", error.description);
    }];
}

- (void)fetchPullRequestSuccess:(GHPullRequestRequestSuccess)successBlock {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    [self.manager GET:@"https://api.github.com/repos/facebook/react-native/pulls"
           parameters:nil
             progress:nil
    success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
        
//        GHRepositoryResponse *repositories =
//        [[GHRepositoryResponse alloc] initWithDictionary:responseObject];

        if (successBlock) {
            return successBlock(nil);
        }
      
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
        NSLog(@"error: %@", error.description);
    }];
}

@end
