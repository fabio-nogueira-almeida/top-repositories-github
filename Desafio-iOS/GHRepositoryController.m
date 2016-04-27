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

@interface GHRepositoryController ()

@property (strong, nonatomic) GHRepositoryTableViewDataSource *tableViewDataSource;
@property (strong, nonatomic) GHDataSource *dataSource;

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

- (void)setupTableView {
    self.tableView.estimatedRowHeight = 90.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.dataSource = self.tableViewDataSource;
}

#pragma mark - ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Github JavaPop";
    [self setupTableView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.dataSource fetchRepositoryForPage:1
    success:^(NSArray *repositories, GHHTTPHeader *header) {
        self.tableViewDataSource.repositories = repositories;
        [self.tableView reloadData];
    }];
}

@end
