//
//  GHRepositoryViewModel.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepositoryViewModel.h"

#import "GHRepository.h"

@interface GHRepositoryViewModel ()

@property (strong, nonatomic) NSString *repositoryName;
@property (strong, nonatomic) NSString *repositoryDescription;
@property (strong, nonatomic) NSString *forks;
@property (strong, nonatomic) NSString *stars;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSURL *ownerImageURL;

@end

@implementation GHRepositoryViewModel

- (instancetype)initWithModel:(GHRepository *)model {
    self = [super init];
    if (self) {
        self.repositoryName = model.name;
        self.username = model.owner.login;
        self.ownerImageURL = [NSURL URLWithString:model.owner.avatarURL];
        
        if (![model.repositoryDescription isKindOfClass:[NSNull class]]) {
            self.repositoryDescription = model.repositoryDescription;
        }
        
        NSString *forks = @"0";
        if (model.forks) {
            forks = model.forks.stringValue;
        }
        self.forks = forks;

        NSString *stars = @"0";
        if (model.stars) {
            stars = model.stars.stringValue;
        }
        self.stars = stars;
    }
    
    return self;
}

@end
