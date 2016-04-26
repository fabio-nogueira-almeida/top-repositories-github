//
//  GHRepository.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "GHOwner.h"

@interface GHRepository : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSString *codigo;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *repositoryDescription;
@property (copy, nonatomic) GHOwner *owner;
@property (copy, nonatomic) NSNumber *forks;
@property (copy, nonatomic) NSNumber *stars;

@end
