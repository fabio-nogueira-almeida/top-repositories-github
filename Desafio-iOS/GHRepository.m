//
//  GHRepository.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepository.h"

@implementation GHRepository

#pragma mark - MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"codigo" : @"id",
        @"name" : @"name",
        @"repositoryDescription" : @"description",
        @"owner" : @"owner",
        @"forks" : @"forks",
        @"stars" : @"stars"
    };
}

+ (NSValueTransformer *)ownerJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[GHOwner class]];
}

@end