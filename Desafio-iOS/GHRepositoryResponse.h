//
//  GHRepositoryResponse.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const GHRepositoryResponseTotal = @"total_count";
static NSString * const GHRepositoryResponseStatus = @"incomplete_status";
static NSString * const GHRepositoryResponseItems = @"items";

@interface GHRepositoryResponse : NSObject

@property (copy, nonatomic) NSNumber *totalCount;
@property (nonatomic) BOOL incompleteStatus;
@property (strong, nonatomic) NSArray *items;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
