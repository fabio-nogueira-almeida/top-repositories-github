//
//  GHPullRequestController.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHPullRequestController : UITableViewController

- (void)createWithRepository:(NSString *)repository
                        user:(NSString *)user;

@end
