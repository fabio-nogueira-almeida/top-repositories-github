//
//  GHRepositoryTableViewCell.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepositoryTableViewCell.h"

@implementation GHRepositoryTableViewCell

#pragma mark - Initialize

- (void)initializeWithModel:(id)model {
    GHRepository *repository = (GHRepository *)model;
    self.imageView.clipsToBounds = YES;
    self.imageView.layer.cornerRadius = CGRectGetWidth(self.imageView.frame) / 2;
    self.nameLabel.text = repository.name;
}

@end
