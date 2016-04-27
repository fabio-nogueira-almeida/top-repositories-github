//
//  GHHTTPHeader.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHHTTPHeader.h"

@implementation GHHTTPHeader

+ (instancetype)initWithHeader:(NSDictionary *)headers {
    GHHTTPHeader *header = [[GHHTTPHeader alloc] init];
    header.perPage = [headers objectForKey:@"X-Per-Page"];
    header.totalCount = [headers objectForKey:@"X-Total-Count"];
    header.links = [headers objectForKey:@"Link"];
    
    return header;
}

@end
