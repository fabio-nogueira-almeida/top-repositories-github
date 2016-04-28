//
//  GHRepositoryTableViewDataSource.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepositoryTableViewDataSource.h"

#import "GHRepositoryTableViewCell.h"
#import "GHLoadingTableViewCell.h"

#import "GHRepositoryViewModel.h"

#import "UITableView+Extension.h"

@interface GHRepositoryTableViewDataSource ()

@property (strong, nonatomic) NSMutableArray *repositories;
@property (nonatomic) NSInteger totalRepository;

@end

@implementation GHRepositoryTableViewDataSource

#pragma mark - Getter

- (NSMutableArray *)repositories {
    if (!_repositories) {
        _repositories = [NSMutableArray array];
    }
    
    return _repositories;
}

#pragma makr - Private

- (void)reloadTableViewDataSource:(NSArray *)repositories
                  totalRepository:(NSInteger)totalRepository {
    [self.repositories addObjectsFromArray:repositories];
    self.totalRepository = totalRepository;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numberOfRows = self.repositories.count;
    
    if (numberOfRows < self.totalRepository) {
        numberOfRows++;
    }
    
    return numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GHTableViewCell *cell;
    
    if (indexPath.row < self.repositories.count) {
        cell = (GHRepositoryTableViewCell *)[tableView gh_registerOrReuseCellForClass:[GHRepositoryTableViewCell class]
                                                                            indexPath:indexPath];
        if (indexPath.row <= self.repositories.count) {
            [cell initWithModel:[self.repositories objectAtIndex:indexPath.row]];
        }
    } else {
        cell =
        (GHLoadingTableViewCell *)[tableView gh_registerOrReuseCellForClass:[GHLoadingTableViewCell class]
                                                                  indexPath:indexPath];
    }
    
    return cell;
}

@end
