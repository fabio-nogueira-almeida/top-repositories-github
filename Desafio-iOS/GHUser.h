//
//  GHUser.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GHUser : NSObject

@property (copy, nonatomic) NSString *userName;
@property (copy, nonatomic) NSString *avatarURL;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
