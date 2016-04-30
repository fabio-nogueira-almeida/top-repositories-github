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
        self.codigo = [dictionary objectForKey:GHRepositoryCodigo];
        self.name = [dictionary objectForKey:GHRepositoryName];
        self.repositoryDescription = [dictionary objectForKey:GHRepositoryRepositoryDescription];
        self.forks = [dictionary objectForKey:GHRepositoryForks];
        self.stars = [dictionary objectForKey:GHRepositoryStars];
        self.owner = [[GHOwner alloc] initWithDictionary:[dictionary objectForKey:GHRepositoryOwner]];
    }
    
    return self;
}

@end