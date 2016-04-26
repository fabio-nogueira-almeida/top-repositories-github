//
//  GHOwner.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 25/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface GHOwner : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSString *login;
@property (copy, nonatomic) NSString *avatarURL;

@end
