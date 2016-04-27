//
//  GHUser.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 27/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "GHUser.h"

@implementation GHUser

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.userName = (NSString *)[dictionary objectForKey:@"login"];
        self.avatarURL = [dictionary objectForKey:@"avatar_url"];
    }
    
    return self;
}

@end
