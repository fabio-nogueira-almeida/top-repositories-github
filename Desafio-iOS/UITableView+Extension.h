//
//  UITableView+Extension.h
//  Desafio-iOS
//
//  Created by Fabio Nogueira on 26/04/16.
//  Copyright © 2016 Fabio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Extension)

- (UITableViewCell *)gh_registerOrReuseCellForClass:(id)tableViewCellClass
                                          indexPath:(NSIndexPath *)indexPath;

@end
