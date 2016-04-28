//
//  GHUser.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const GHUserUserName = @"login2";
static NSString * const GHUserAvatarURL = @"avatar_url";

@interface GHUser : NSObject

@property (copy, nonatomic) NSString *userName;
@property (copy, nonatomic) NSString *avatarURL;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
