//
//  GHPullRequest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHPullRequest.h"
#import "GHUser.h"

@implementation GHPullRequest

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = [dictionary objectForKey:@"title"];
        self.body = [dictionary objectForKey:@"body"];
        self.user = [[GHUser alloc] initWithDictionary:[dictionary objectForKey:@"user"]];
    }
    
    return self;
}

@end