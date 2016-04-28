//
//  GHPullRequestTableViewCell.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GHTableViewCell.h"
#import "GHPullRequest.h"

@interface GHPullRequestTableViewCell : GHTableViewCell

@property (strong, nonatomic) GHPullRequest *model;

@property (weak, nonatomic) IBOutlet UILabel *repositoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyTitle;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;

@end
