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

typedef void(^GHPagedRequestSuccess) (__strong NSArray *repositories, __strong GHHTTPHeader *header);

@interface GHDataSource : NSObject

- (void)fetchRepository:(NSInteger)page
                success:(GHPagedRequestSuccess)successBlock;

@end
