//
//  GHPullRequestViewModel.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHPullRequestViewModel.h"

#import "GHPullRequest.h"

@interface GHPullRequestViewModel ()

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *body;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSURL *userImageURL;

@end

@implementation GHPullRequestViewModel

- (instancetype)initWithModel:(GHPullRequest *)model {
    self = [super init];
    if (self) {
        self.title = model.title;
        self.username = model.user.userName;
        self.userImageURL = [NSURL URLWithString:model.user.avatarURL];
        if (![model.body isKindOfClass:[NSNull class]]) {
            self.body = model.body;
        }
    }
    
    return self;
}

@end
