//
//  GHPullRequest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHPullRequest.h"

@implementation GHPullRequest

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = [dictionary objectForKey:GHPullRequestTitle];
        self.body = [dictionary objectForKey:GHPullRequestBody];
        self.htmlURL = [dictionary objectForKey:GHPullRequestHtmlURL];
        self.user = [[GHUser alloc] initWithDictionary:[dictionary objectForKey:GHPullRequestUser]];
    }
    
    return self;
}

@end
