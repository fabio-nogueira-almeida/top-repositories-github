//
//  GHRepositoryTableViewDataSource.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHRepositoryTableViewDataSource : NSObject <UITableViewDataSource>

- (void)reloadTableViewDataSource:(NSArray *)repositories
                  totalRepository:(NSInteger)totalRepository;

- (void)reloadTableViewDataSourceForEmptyRepository;

@end
