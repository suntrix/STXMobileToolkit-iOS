//
//  UINavigationItem+STX_Addons.h
//  MobileToolkit
//
//  Created by Sebastian Owodzin on 03/05/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (IBOutlets)

@property (nonatomic, strong) IBOutletCollection(UIBarButtonItem) NSArray *leftBarButtonItemsCollection;

@property (nonatomic, strong) IBOutletCollection(UIBarButtonItem) NSArray *rightBarButtonItemsCollection;

@end
