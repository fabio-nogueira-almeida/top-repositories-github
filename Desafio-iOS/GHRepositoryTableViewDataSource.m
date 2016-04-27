//
//  GHRepositoryTableViewDataSource.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepositoryTableViewDataSource.h"
#import "GHRepositoryTableViewCell.h"
#import "UITableView+Extension.h"

@implementation GHRepositoryTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.repositories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GHRepositoryTableViewCell *cell =
    (GHRepositoryTableViewCell *)[tableView gh_registerOrReuseCellForClass:[GHRepositoryTableViewCell class]
                                                                 indexPath:indexPath];
    [cell initializeWithModel:[self.repositories objectAtIndex:indexPath.row]];
    
    return cell;
}


@end
