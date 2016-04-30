//
//  GHDataSource.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GHRepositoryResponse;
@class GHHTTPHeader;

typedef void(^GHPagedRequestSuccess) (__strong NSArray *repositories, NSInteger totalRepository);
typedef void(^GHPullRequestRequestSuccess) (__strong NSArray *pullRequests);

@interface GHDataSource : NSObject

- (void)fetchRepositoryForLanguage:(NSString *)language
                              page:(NSInteger)page
                           success:(GHPagedRequestSuccess)successBlock;

- (void)fetchPullRequestForRepository:(NSString *)repository
                                owner:(NSString *)owner
                              success:(GHPullRequestRequestSuccess)successBlock;

@end
