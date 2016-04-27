//
//  GHRepository.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepository.h"

@implementation GHRepository

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.codigo = [dictionary objectForKey:@"id"];
        self.name = [dictionary objectForKey:@"name"];
        self.repositoryDescription = [dictionary objectForKey:@"description"];
        self.forks = [dictionary objectForKey:@"forks"];
        self.stars = [dictionary objectForKey:@"stars"];
        self.owner = [[GHOwner alloc] initWithDictionary:[dictionary objectForKey:@"owner"]];
    }
    
    return self;
}

@end