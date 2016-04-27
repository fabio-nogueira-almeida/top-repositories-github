//
//  GHRepository.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GHOwner.h"

@interface GHRepository : NSObject

@property (copy, nonatomic) NSNumber *codigo;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *repositoryDescription;
@property (strong, nonatomic) GHOwner *owner;
@property (copy, nonatomic) NSNumber *forks;
@property (copy, nonatomic) NSNumber *stars;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
