//
//  UIDevice+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 01/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "UIDevice+STX_Addons.h"

#import <assert.h>
#import <stdbool.h>
#import <unistd.h>
#import <sys/sysctl.h>
#import <sys/types.h>
#import <sys/utsname.h>

@implementation UIDevice (ExtendedInfo)

- (NSString *)modelName {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

- (BOOL)isRetina {
    return ( 2.0 == [UIScreen mainScreen].scale );
}

- (BOOL)isRetina3 {
    return ( self.isRetina && NO == self.isRetina4 );
}

- (BOOL)isRetina4 {
    return ( self.isRetina && 480.0 < [[UIScreen mainScreen] bounds].size.height );
}

- (BOOL)isDebuggerConnected {
    int                 junk;
    int                 mib[4];
    struct kinfo_proc   info;
    size_t              size;
    
    info.kp_proc.p_flag = 0;
    
    mib[0] = CTL_KERN;
    mib[1] = KERN_PROC;
    mib[2] = KERN_PROC_PID;
    mib[3] = getpid();
    
    size = sizeof(info);
    
    junk = sysctl(mib, sizeof(mib) / sizeof(*mib), &info, &size, NULL, 0);
    assert(0 == junk);
    
    return ( (info.kp_proc.p_flag & P_TRACED) != 0 );
}

- (BOOL)isIOS7 {
    return 7.0 <= [[UIDevice currentDevice].systemVersion floatValue];
}

@end
