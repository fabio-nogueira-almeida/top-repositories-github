//
//  GHPullRequest.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHUser.h"

@interface GHPullRequest : NSObject

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *body;
@property (strong, nonatomic) GHUser *user;
@property (copy, nonatomic) NSString *htmlURL;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
