//
//  UIDevice+STX_Extensions.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 01/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (STX_Extensions)

- (NSString *)modelName;

- (BOOL)isRetina;

- (BOOL)isRetina3;

- (BOOL)isRetina4;

- (BOOL)isDebuggerConnected;

- (BOOL)isIOS7;

@end
