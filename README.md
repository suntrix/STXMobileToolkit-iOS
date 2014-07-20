STXMobileToolkit-iOS
=================
Library that eases the common tasks in iOS.

Categories overview:
--------------------
* ###NSArray###
  * **NSArray (UniqueArray)**
Returns an array of unique objects

* ###NSData###
  * **NSData (CryptoHash)**
A set of convienient methods to count a crypto hash from NSData object. Supported hash algorhytms: MD2, MD4, MD5, SHA1, SHA224, SHA256, SHA384, SHA512.

  * **NSData (Hex)**
Converts NSData bytes to a hexidecimal NSString.

* ###NSObject###
  * **NSObject (PropertyArray)**
An array of all object's properties names.

* ###NSString###
  * **NSString (CryptoHash)**
A set of convienient methods to count a crypto hash from NSString object. Supported hash algorhytms: MD2, MD4, MD5, SHA1, SHA224, SHA256, SHA384, SHA512.

  * **NSString (Hex)**
Converts hexadecimal NSString to NSData bytes.

* ###NSURLRequest###
  * **NSURLRequest (SelfSignedCertificate)**
Enables using server-side self-signed SSL certificates when executing NSURLRequest.

* ###UIColor###
  * **UIColor (Equality)**
Extends UIColor with isEqualToColor method.

  * **UIColor (Hex)**
Addition to UIColor that allow to create a color object from a hexidecimal string. Supported variants are: RGB, RGBA, ARGB, #RGB, #RGBA, #ARGB.

* ###UIDevice###
  * **UIDevice (ExtendedInfo)**
Extends UIDevice with additional methods to check device's features & status such as: Retina display, screen size(3,5" or 4"), if the debugger is connected, if the device is running iOS7.

* ###UIImage###
  * **UIImage (AppIcon)**
Convienient way to fetch an AppIcon form app's Asset Catalog. Allows to fetch standard icon, spotlight icon, settings icon.

  * **UIImage (LaunchImage)**
Convienient way to fetch an LaunchImage form app's Asset Catalog.

  * **UIImage (ScreenCapture)**
Allows to capture the whole screen or only a part of it.

* ###UINavigationItem###
  * **UINavigationItem (IBOutlets)**
Adds access to leftBarButtonItems/rightBarButtonItems IBOutletCollections. Now it’s possible to assign more than one button to navigation bar in UI Builder.
