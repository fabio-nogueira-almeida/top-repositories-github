//
//  GHPullRequestViewModel.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKIT/UIKit.h>

@class GHPullRequest;

@interface GHPullRequestViewModel : NSObject

@property (readonly) NSString *title;
@property (readonly) NSString *body;
@property (readonly) NSString *username;
@property (readonly) NSURL *userImageURL;

- (instancetype)initWithModel:(GHPullRequest *)model;

@end
