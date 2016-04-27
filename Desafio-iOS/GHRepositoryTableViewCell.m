//
//  GHRepositoryTableViewCell.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepositoryTableViewCell.h"
#import "GHRepositoryViewModel.h"

#import <PINRemoteImage/PINImageView+PINRemoteImage.h>

@implementation GHRepositoryTableViewCell

#pragma mark - Private

- (void)imageViewCornerRadius {
    self.imageView.clipsToBounds = YES;
    self.imageView.layer.cornerRadius = CGRectGetWidth(self.imageView.frame) / 2;
}

#pragma mark - Initialize

- (void)initWithViewModel:(id)model {
    [super initWithViewModel:model];
    GHRepositoryViewModel *viewModel = (GHRepositoryViewModel *)model;
    
    self.nameLabel.text = viewModel.repositoryName;
    self.descriptionLabel.text = viewModel.repositoryDescription;
    self.forkLabel.text = viewModel.forks;
    self.starLabel.text = viewModel.stars;
    self.userLabel.text = viewModel.username;
    
    [self.userImageView setPin_updateWithProgress:YES];
    [self.userImageView pin_setImageFromURL:viewModel.userImageURL];
    
    [self imageViewCornerRadius];
}

@end
