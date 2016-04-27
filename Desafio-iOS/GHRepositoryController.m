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
#import "GHLoadingTableViewCell.h"

@interface GHRepositoryController () <UITableViewDelegate>

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

- (void)fetchRepositoryWithPage:(NSInteger)page {
    [self.dataSource fetchRepositoryForPage:page
    success:^(NSArray *repositories, NSInteger totalRepository) {
        [self.tableViewDataSource reloadTableViewDataSource:repositories
                                            totalRepository:totalRepository];
        [self.tableView reloadData];
    }];
}

- (void)setupTableView {
    self.tableView.estimatedRowHeight = 90.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.dataSource = self.tableViewDataSource;
    self.tableView.delegate = self;
}

#pragma mark - ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Github JavaPop";
    self.currentPage = 1;
    [self setupTableView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self fetchRepositoryWithPage:self.currentPage];
}

#pragma mark - UITableVieDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([cell isKindOfClass:[GHLoadingTableViewCell class]]) {
        self.currentPage++;
        [self fetchRepositoryWithPage:self.currentPage];
    }
}

@end
