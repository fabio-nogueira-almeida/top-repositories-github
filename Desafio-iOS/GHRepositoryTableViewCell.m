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

- (void)initializeWithModel:(GHRepository *)model {
    self.nameLabel.text = model.name;
}

@end
