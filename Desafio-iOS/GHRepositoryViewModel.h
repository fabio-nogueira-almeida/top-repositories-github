//
//  GHRepositoryViewModel.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKIT/UIKit.h>

@class GHRepository;

@interface GHRepositoryViewModel : NSObject

@property (readonly) NSString *repositoryName;
@property (readonly) NSString *repositoryDescription;
@property (readonly) NSString *forks;
@property (readonly) NSString *stars;
@property (readonly) NSString *username;
@property (readonly) NSURL *ownerImageURL;

- (instancetype)initWithModel:(GHRepository *)model;

@end
