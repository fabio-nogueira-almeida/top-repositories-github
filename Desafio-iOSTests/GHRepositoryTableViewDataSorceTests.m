//
//  GHRepositoryTableViewDataSorceTests.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "GHRepositoryController.h"
#import "GHRepositoryTableViewCell.h"
#import "GHLoadingTableViewCell.h"
#import "GHRepositoryTableViewDataSource.h"

@interface GHRepositoryTableViewDataSorceTests : XCTestCase

@end

@implementation GHRepositoryTableViewDataSorceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldVerifyNumberOfRowsInSection {
    GHRepositoryTableViewDataSource *dataSource = [[GHRepositoryTableViewDataSource alloc] init];
    
    NSArray *fakeRepositories = @[@"repo1, repo2, repo 3"];
    [dataSource reloadTableViewDataSource:fakeRepositories
                          totalRepository:fakeRepositories.count];
    
    id tableviewMock =  OCMClassMock([UITableView class]);
    
    XCTAssertEqual([dataSource tableView:tableviewMock numberOfRowsInSection:0], fakeRepositories.count);
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
