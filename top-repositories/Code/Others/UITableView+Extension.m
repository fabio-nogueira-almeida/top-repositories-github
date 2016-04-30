//
//  UITableView+Extension.m
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

- (UITableViewCell *)gh_registerOrReuseCellForClass:(id)tableViewCellClass
                                          indexPath:(NSIndexPath *)indexPath {
    NSString *className = NSStringFromClass([tableViewCellClass class]);
    NSString *identifier = [NSString stringWithFormat:@"%@_%ld", className, (long)indexPath.row];
    
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        [self registerNib:[UINib nibWithNibName:className bundle:[NSBundle mainBundle]]
   forCellReuseIdentifier:identifier];
        cell = [self dequeueReusableCellWithIdentifier:identifier];
    }
    
    return cell;
}

@end
