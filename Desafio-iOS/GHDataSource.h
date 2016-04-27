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

@interface GHDataSource : NSObject

- (void)fetchRepositoryForPage:(NSInteger)page
                       success:(GHPagedRequestSuccess)successBlock;

@end
