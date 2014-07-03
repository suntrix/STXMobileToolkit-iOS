MobileToolkit-iOS
=================
Library that eases the common tasks in iOS.

Categories overview:
--------------------

####NSData+CryptoHash####
A set of convienient methods to count a crypto hash from NSData object. Supported hash algorhytms: MD2, MD4, MD5, SHA1, SHA224, SHA256, SHA384, SHA512.

####NSData+Hex####
Converts NSData bytes to a hexidecimal NSString.

####NSObject+PropertyArray####
An array of all object's properties names.

####NSString+CryptoHash####
A set of convienient methods to count a crypto hash from NSString object. Supported hash algorhytms: MD2, MD4, MD5, SHA1, SHA224, SHA256, SHA384, SHA512.

####NSString+Hex####
Converts hexadecimal NSString to NSData bytes.

####NSURLRequest+SelfSignedCertificate####
Enables using server-side self-signed SSL certificates when executing NSURLRequest.

####UIColor+Equality####
Extends UIColor with isEqualToColor method.

####UIColor+Hex####
Addition to UIColor that allow to create a color object from a hexidecimal string. Supported variants are: RGB, RGBA, ARGB, #RGB, #RGBA, #ARGB.

####UIDevice+Extended####
Extends UIDevice with additional methods to check device's features & status such as: Retina display, screen size(3,5" or 4"), if the debugger is connected, if the device is running iOS7.

####UIImage+AppIcon####
Convienient way to fetch an AppIcon form app's Asset Catalog. Allows to fetch standard icon, spotlight icon, settings icon.

####UIImage+LaunchImage####
Convienient way to fetch an LaunchImage form app's Asset Catalog.

####UIImage+Retina4####
A way to load separate images made for 4" Retina when we have a project that is not using Asset Catalog.
Just add -568h suffix to your filename (eg. image-568h@2x.png or image-568h.png).

####UIImage+ScreenCapture####
Allows to capture the whole screen or only a part of it.

####UINavigationItem+STX_Extensions####
Adds access to leftBarButtonItems/rightBarButtonItems IBOutletCollections. Now it’s possible to assign more than one button to navigation bar in UI Builder.