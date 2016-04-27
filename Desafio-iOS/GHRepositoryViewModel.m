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
@property (strong, nonatomic) NSURL *userImageURL;

@end

@implementation GHRepositoryViewModel

- (instancetype)initWithModel:(GHRepository *)model {
    self = [super init];
    if (self) {
        self.repositoryName = model.name;
        self.repositoryDescription = model.repositoryDescription;
        self.forks = model.forks.stringValue;
        self.stars = model.stars.stringValue;
        self.username = model.owner.login;
        self.userImageURL = [NSURL URLWithString:model.owner.avatarURL];
    }
    
    return self;
}

@end
