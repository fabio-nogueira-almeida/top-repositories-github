//
//  GHHTTPHeader.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GHHTTPHeader : NSObject

@property (nonatomic, strong) NSString *perPage;
@property (nonatomic, strong) NSString *totalCount;
@property (nonatomic, strong) NSArray *links;

+ (instancetype)initWithHeader:(NSDictionary *)headers;

@end
