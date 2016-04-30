//
//  GHPullRequestTableViewDataSource.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHPullRequestTableViewDataSource.h"
#import "GHPullRequestTableViewCell.h"
#import "UITableView+Extension.h"

@interface GHPullRequestTableViewDataSource ()

@property (strong, nonatomic) NSArray *pullRequests;

@end

@implementation GHPullRequestTableViewDataSource

#pragma mark - Public

- (void)reloadTableViewDataSource:(NSArray *)pullRequests {
    self.pullRequests = [NSArray arrayWithArray:pullRequests];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pullRequests.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GHPullRequestTableViewCell *cell =
    (GHPullRequestTableViewCell *)[tableView gh_registerOrReuseCellForClass:[GHPullRequestTableViewCell class]
                                                                  indexPath:indexPath];

    [cell initWithModel:[self.pullRequests objectAtIndex:indexPath.row]];
    
    return cell;
}


@end
