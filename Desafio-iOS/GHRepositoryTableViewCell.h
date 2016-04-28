//
//  GHRepositoryTableViewCell.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GHTableViewCell.h"
#import "GHRepository.h"

@interface GHRepositoryTableViewCell : GHTableViewCell

@property (strong, nonatomic) GHRepository *model;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;

@property (weak, nonatomic) IBOutlet UILabel *forkLabel;
@property (weak, nonatomic) IBOutlet UILabel *starLabel;

@end
