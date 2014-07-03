//
//  UINavigationItem+STX_Extensions.m
//  MobileToolkit
//
//  Created by Sebastian Owodzin on 03/05/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "UINavigationItem+STX_Extensions.h"

@implementation UINavigationItem (STX_Extensions)

- (NSArray*) leftBarButtonItemsCollection {
    return self.leftBarButtonItems;
}

- (void) setLeftBarButtonItemsCollection:(NSArray *)leftBarButtonItemsCollection {
    self.leftBarButtonItems = [leftBarButtonItemsCollection sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"tag" ascending:YES]]];
}

- (NSArray*) rightBarButtonItemsCollection {
    return self.rightBarButtonItems;
}

- (void) setRightBarButtonItemsCollection:(NSArray *)rightBarButtonItemsCollection {
    self.rightBarButtonItems = [rightBarButtonItemsCollection sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"tag" ascending:YES]]];
}

@end
