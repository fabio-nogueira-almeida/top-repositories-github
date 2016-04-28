//
//  GHPullRequestController.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHPullRequestController.h"
#import "GHDataSource.h"
#import "GHPullRequestTableViewDataSource.h"
#import "GHPullRequestTableViewCell.h"

#import <SafariServices/SafariServices.h>

@interface GHPullRequestController () <UITableViewDelegate>

@property (strong, nonatomic) NSString *repository;
@property (strong, nonatomic) NSString *ownerName;

@property (strong, nonatomic) GHPullRequestTableViewDataSource *tableViewDataSource;
@property (strong, nonatomic) GHDataSource *dataSource;

@end

@implementation GHPullRequestController

#pragma mark - Getter

- (GHDataSource *)dataSource {
    if (!_dataSource) {
        _dataSource = [[GHDataSource alloc] init];
    }
    return _dataSource;
}

- (GHPullRequestTableViewDataSource *)tableViewDataSource {
    if (!_tableViewDataSource) {
        _tableViewDataSource = [[GHPullRequestTableViewDataSource alloc] init];
    }
    
    return _tableViewDataSource;
}

#pragma mark - Private

- (void)fetchPullRequests {
    [self.dataSource fetchPullRequestForRepository:self.repository
                                             owner:self.ownerName
    success:^(NSArray *pullRequests) {
        [self.tableViewDataSource reloadTableViewDataSource:pullRequests];
        [self.tableView reloadData];
    }];
}

- (void)setupTableView {
    self.tableView.estimatedRowHeight = 90.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.tableFooterView = [UIView new];
    self.tableView.dataSource = self.tableViewDataSource;
    self.tableView.delegate = self;
}

- (void)presentSafariControllerWithURL:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    SFSafariViewController *safariController = [[SFSafariViewController alloc] initWithURL:url];
    [self presentViewController:safariController animated:YES completion:nil];
}

#pragma mark - Initialize

- (void)createWithRepository:(NSString *)repository
                   ownerName:(NSString *)ownerName {
    self.repository = repository;
    self.ownerName = ownerName;
}

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.title = self.repository;
    [self fetchPullRequests];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    GHPullRequestTableViewCell *cell =
    (GHPullRequestTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [self presentSafariControllerWithURL:cell.model.htmlURL];
}

@end
