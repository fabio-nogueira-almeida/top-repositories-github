//
//  GHOwner.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHOwner.h"

@implementation GHOwner

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"login" : @"login",
        @"avatarURL" : @"avatar_url"
    };
}

@end