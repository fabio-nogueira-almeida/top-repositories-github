//
//  GHRepositoryControllerTest.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHRepositoryController.h"

@interface GHRepositoryControllerTest : XCTestCase

@property (strong, nonatomic) GHRepositoryController *repositoryController;

@end

@implementation GHRepositoryControllerTest

- (void)setUp {
    [super setUp];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle:nil];
    UIViewController *nav = [mainStoryboard instantiateInitialViewController];
    self.repositoryController = (GHRepositoryController *)nav;
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldVerifyIfTheFirstControllerIsRepositoryController {
    XCTAssertEqualObjects(self.repositoryController.class, [GHRepositoryController class]);
}


@end
