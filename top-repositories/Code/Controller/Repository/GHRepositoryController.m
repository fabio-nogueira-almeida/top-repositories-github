//
//  GHRepositoryController.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHRepositoryController.h"
#import "GHRepositoryTableViewDataSource.h"
#import "GHDataSource.h"

#import "GHRepositoryTableViewCell.h"
#import "GHLoadingTableViewCell.h"

#import "GHPullRequestController.h"

@interface GHRepositoryController () <UITableViewDelegate, UISearchBarDelegate>

@property (strong, nonatomic) GHRepositoryTableViewDataSource *tableViewDataSource;
@property (strong, nonatomic) GHDataSource *dataSource;

@property (nonatomic) NSInteger currentPage;

@end

@implementation GHRepositoryController

#pragma mark - Getter

- (GHDataSource *)dataSource {
    if (!_dataSource) {
        _dataSource = [[GHDataSource alloc] init];
    }
    return _dataSource;
}

- (GHRepositoryTableViewDataSource *)tableViewDataSource {
    if (!_tableViewDataSource) {
        _tableViewDataSource = [[GHRepositoryTableViewDataSource alloc] init];
    }
    
    return _tableViewDataSource;
}

#pragma mark - Private

- (void)fetchRepositoryForLanguage:(NSString *)language
                              page:(NSInteger)page {
    [self.dataSource fetchRepositoryForLanguage:language
                                           page:page
    success:^(NSArray *repositories, NSInteger totalRepository) {
        [self.tableViewDataSource reloadTableViewDataSource:repositories
                                            totalRepository:totalRepository];
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

#pragma mark - ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Github";
    self.currentPage = 1;
    self.searchBar.delegate = self;
    [self setupTableView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self fetchRepositoryForLanguage:self.searchBar.text
                                page:self.currentPage];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([cell isKindOfClass:[GHLoadingTableViewCell class]]) {
        self.currentPage++;
        [self fetchRepositoryForLanguage:self.searchBar.text
                                    page:self.currentPage];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    GHRepositoryTableViewCell *cell =
    (GHRepositoryTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    GHPullRequestController *pullRequestController = [[GHPullRequestController alloc] init];
    [pullRequestController createWithRepository:cell.model.name
                                      ownerName:cell.model.owner.login];
    [self.navigationController pushViewController:pullRequestController animated:YES];
}

#pragma mark - UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    self.title = [NSString stringWithFormat:@"%@ repositories", searchBar.text];
    self.currentPage = 1;
    [self.tableViewDataSource reloadTableViewDataSourceForEmptyRepository];
    [self fetchRepositoryForLanguage:searchBar.text
                                page:self.currentPage];
}

@end