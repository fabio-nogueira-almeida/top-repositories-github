//
//  GHRepositoryTableViewDataSorceTests.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "GHRepositoryController.h"
#import "GHRepositoryTableViewCell.h"
#import "GHLoadingTableViewCell.h"
#import "GHRepositoryTableViewDataSource.h"

@interface GHRepositoryTableViewDataSorceTests : XCTestCase

@end

@implementation GHRepositoryTableViewDataSorceTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldVerifyNumberOfRowsInSection {
    GHRepositoryTableViewDataSource *dataSource = [[GHRepositoryTableViewDataSource alloc] init];
    
    NSArray *fakeRepositories = @[@"repo1, repo2, repo 3"];
    [dataSource reloadTableViewDataSource:fakeRepositories
                          totalRepository:fakeRepositories.count];
    
    UITableView *tableview = [[UITableView alloc] init];
    
    XCTAssertEqual([dataSource tableView:tableview numberOfRowsInSection:0], fakeRepositories.count);
}

- (void)testShouldIfCellIsRepositoryTypeForRowAtIndexPath {
    GHRepositoryTableViewDataSource *dataSource = [[GHRepositoryTableViewDataSource alloc] init];
    
    NSArray *fakeRepositories = @[@"repo1, repo2, repo 3"];
    [dataSource reloadTableViewDataSource:fakeRepositories
                          totalRepository:fakeRepositories.count];
    
    id cellForRow = [dataSource tableView:[[UITableView alloc] init]
                    cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    
    XCTAssertEqual([cellForRow class], [GHRepositoryTableViewCell class], @"Should return the RepositoryTableViewCell class.");
}

- (void)testShouldIfCellIsLoadingTypeForRowAtIndexPath {
    GHRepositoryTableViewDataSource *dataSource = [[GHRepositoryTableViewDataSource alloc] init];
    
    NSArray *fakeRepositories = @[@"repo1, repo2, repo 3"];
    [dataSource reloadTableViewDataSource:fakeRepositories
                          totalRepository:fakeRepositories.count];
    
    id cellForRow = [dataSource tableView:[[UITableView alloc] init]
                    cellForRowAtIndexPath:[NSIndexPath indexPathForRow:fakeRepositories.count inSection:0]];
    
    XCTAssertEqual([cellForRow class], [GHLoadingTableViewCell class], @"Should return the LoadingCell class.");
}

@end
