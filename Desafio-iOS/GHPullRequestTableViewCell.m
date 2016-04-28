//
//  GHPullRequestTableViewCell.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHPullRequestTableViewCell.h"
#import "GHPullRequestViewModel.h"
#import <PINRemoteImage/PINImageView+PINRemoteImage.h>

@implementation GHPullRequestTableViewCell

#pragma mark - Private

- (void)imageViewCornerRadius {
    self.userImageView.layer.masksToBounds = YES;
    self.userImageView.layer.cornerRadius = CGRectGetWidth(self.userImageView.frame) / 2;
}

#pragma mark - Public 

- (void)initWithModel:(id)model {
    [super initWithModel:model];
    self.model = model;
    
    GHPullRequestViewModel *viewModel = [[GHPullRequestViewModel alloc] initWithModel:model];
    self.repositoryLabel.text = viewModel.title;
    self.userLabel.text = viewModel.username;
    self.bodyTitle.text = viewModel.body;
    [self.userImageView setPin_updateWithProgress:YES];
    [self.userImageView pin_setImageFromURL:viewModel.userImageURL];

    [self imageViewCornerRadius];
}

@end
