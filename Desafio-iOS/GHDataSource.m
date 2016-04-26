//
//  GHDataSource.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHDataSource.h"
#import <AFNetworking/AFNetworking.h>

@interface GHDataSource ()

@property (strong, nonatomic) AFHTTPSessionManager *manager;

@end

@implementation GHDataSource

#pragma mark - Getter

- (AFHTTPSessionManager *)manager {
    if (!_manager) {
        _manager = [[AFHTTPSessionManager manager] initWithBaseURL:[NSURL URLWithString:@"https://api.github.com/"]];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    
    return _manager;
}

@end
