//
//  GHPullRequestTableViewCell.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHPullRequestTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *repositoryLabel;

@property (weak, nonatomic) IBOutlet UILabel *bodyTitle;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;

@end
