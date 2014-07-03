//
//  UINavigationItem+STX_Extensions.h
//  MobileToolkit
//
//  Created by Sebastian Owodzin on 03/05/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (STX_Extensions)

@property (nonatomic, strong) IBOutletCollection(UIBarButtonItem) NSArray *leftBarButtonItemsCollection;

@property (nonatomic, strong) IBOutletCollection(UIBarButtonItem) NSArray *rightBarButtonItemsCollection;

@end
