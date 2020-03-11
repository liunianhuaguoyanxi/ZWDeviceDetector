//
//  ZWDeviceDetector.m
//  ZWDeviceDetector
//
//  Created by 流年划过颜夕 on 2020/3/11.
//  Copyright © 2020 liunianhuaguoyanxi. All rights reserved.
//

#import "ZWDeviceDetector.h"
#import "sys/utsname.h"
// iPhone
#define kDeviceModelIPhone1G @"iPhone1,1"
#define kDeviceModelIPhone3G @"iPhone1,2"
#define kDeviceModelIPhone3GS @"iPhone2,1"
#define kDeviceModelIPhone4 @"iPhone3,1"
#define kDeviceModelIPhone4_1 @"iPhone3,3"
#define kDeviceModelIPhone4S @"iPhone4,1"
#define kDeviceModelIPhone5 @"iPhone5,1"
#define kDeviceModelIPhone5_1 @"iPhone5,2"
#define kDeviceModelIPhone5C @"iPhone5,3"
#define kDeviceModelIPhone5C_1 @"iPhone5,4"
#define kDeviceModelIPhone5S @"iPhone6,1"
#define kDeviceModelIPhone5S_1 @"iPhone6,2"
#define kDeviceModelIPhone6 @"iPhone7,2"
#define kDeviceModelIPhone6P @"iPhone7,1"
#define kDeviceModelIPhone6S @"iPhone8,1"
#define kDeviceModelIPhone6SP @"iPhone8,2"
#define kDeviceModelIPhoneSE @"iPhone8,4"
#define kDeviceModelIPhone7 @"iPhone9,1"
#define kDeviceModelIPhone7_1 @"iPhone9,3"
#define kDeviceModelIPhone7P @"iPhone9,2"
#define kDeviceModelIPhone7P_1 @"iPhone9,4"
#define kDeviceModelIPhone8 @"iPhone10,1"
#define kDeviceModelIPhone8_1 @"iPhone10,4"
#define kDeviceModelIPhone8P @"iPhone10,2"
#define kDeviceModelIPhone8P_1 @"iPhone10,5"
#define kDeviceModelIPhoneX @"iPhone10,3"
#define kDeviceModelIPhoneX_1 @"iPhone10,6"

#define kDeviceModelIPhoneXS @"iPhone11,2"
#define kDeviceModelIPhoneXSMax @"iPhone11,4"
#define kDeviceModelIPhoneXSMax_1 @"iPhone11,6"
#define kDeviceModelIPhoneXR @"iPhone11,8"

#define kDeviceModelIPhone11 @"iPhone12,1"
#define kDeviceModelIPhone11_Pro @"iPhone12,3"
#define kDeviceModelIPhone11_Pro_Max @"iPhone12,5"
// iPod Touch
#define kDeviceModelIPodTouch1G @"iPod1,1"
#define kDeviceModelIPodTouch2G @"iPod2,1"
#define kDeviceModelIPodTouch3G @"iPod3,1"
#define kDeviceModelIPodTouch4G @"iPod4,1"
#define kDeviceModelIPodTouch5G @"iPod5,1"
#define kDeviceModelIPodTouch6G @"iPod7,1"
#define kDeviceModelIPodTouch7G @"iPod9,1"
// iPad
#define kDeviceModelIPad @"iPad1,1"
#define kDeviceModelIPad2 @"iPad2,1"
#define kDeviceModelIPad2_1 @"iPad2,2"
#define kDeviceModelIPad2_2 @"iPad2,3"
#define kDeviceModelIPad2_3 @"iPad2,4"
#define kDeviceModelIPad3 @"iPad3,1"
#define kDeviceModelIPad3_1 @"iPad3,2"
#define kDeviceModelIPad3_2 @"iPad3,3"
#define kDeviceModelIPad4 @"iPad3,4"
#define kDeviceModelIPad4_1 @"iPad3,5"
#define kDeviceModelIPad4_2 @"iPad3,6"
#define kDeviceModelIPad5_1 @"iPad6,11"
#define kDeviceModelIPad5_2 @"iPad6,12"
#define kDeviceModelIPad6_1 @"iPad7,5"
#define kDeviceModelIPad6_2 @"iPad7,6"
#define kDeviceModelIPad7_1 @"iPad7,11"
#define kDeviceModelIPad7_2 @"iPad7,12"


// iPad Air
#define kDeviceModelIPadAir @"iPad4,1"
#define kDeviceModelIPadAir_1 @"iPad4,2"
#define kDeviceModelIPadAir_2 @"iPad4,3"
#define kDeviceModelIPadAir2 @"iPad5,3"
#define kDeviceModelIPadAir2_1 @"iPad5,4"
#define kDeviceModelIPadAir3 @"iPad11,3"
#define kDeviceModelIPadAir3_1 @"iPad11,4"

// iPad Pro
#define kDeviceModelIPadPro97INCH @"iPad6,3"
#define kDeviceModelIPadPro97INCH_1 @"iPad6,4"
#define kDeviceModelIPadPro129INCH @"iPad6,7"
#define kDeviceModelIPadPro129INCH_1 @"iPad6,8"
#define kDeviceModelIPadPro129INCH2 @"iPad7,1"
#define kDeviceModelIPadPro129INCH2_1 @"iPad7,2"
#define kDeviceModelIPadPro105INCH2 @"iPad7,3"
#define kDeviceModelIPadPro105INCH2_1 @"iPad7,4"

#define kDeviceModelIPadPro11INCH   @"iPad8,1"
#define kDeviceModelIPadPro11INCH_1 @"iPad8,2"
#define kDeviceModelIPadPro11INCH_2 @"iPad8,3"
#define kDeviceModelIPadPro11INCH_3 @"iPad8,4"
#define kDeviceModelIPadPro3129INCH @"iPad8,5"
#define kDeviceModelIPadPro3129INCH_1 @"iPad8,6"
#define kDeviceModelIPadPro3129INCH_2 @"iPad8,7"
#define kDeviceModelIPadPro3129INCH_3 @"iPad8,8"
// iPad Mini
#define kDeviceModelIPadMini @"iPad2,5"
#define kDeviceModelIPadMini_1 @"iPad2,6"
#define kDeviceModelIPadMini_2 @"iPad2,7"
#define kDeviceModelIPadMini2 @"iPad4,4"
#define kDeviceModelIPadMini2_1 @"iPad4,5"
#define kDeviceModelIPadMini2_2 @"iPad4,6"
#define kDeviceModelIPadMini3 @"iPad4,7"
#define kDeviceModelIPadMini3_1 @"iPad4,8"
#define kDeviceModelIPadMini3_2 @"iPad4,9"
#define kDeviceModelIPadMini4 @"iPad5,1"
#define kDeviceModelIPadMini4_1 @"iPad5,2"
#define kDeviceModelIPadMini5 @"iPad11,1"
#define kDeviceModelIPadMini5_1 @"iPad11,2"
// Simulatoe
#define kDeviceModelSimulator @"i386"
#define kDeviceModelSimulator_1 @"x86_64"
@implementation ZWDeviceDetector
+ (ZWDeviceDetector *)sharedDetector
{
    static ZWDeviceDetector *deviceDetector = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        deviceDetector = [[ZWDeviceDetector alloc] init];
        deviceDetector.modelName = [self deviceName];
    });
    return deviceDetector;
}
+ (NSString*)deviceName {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    if ([deviceString hasPrefix:@"iPhone"]) {
        if ([deviceString isEqualToString:kDeviceModelIPhone1G]) return @"iPhone1";
        else if ([deviceString isEqualToString:kDeviceModelIPhone3G]) return @"iPhone3";
        else if ([deviceString isEqualToString:kDeviceModelIPhone3GS]) return @"iPhone3GS";
        else if ([deviceString isEqualToString:kDeviceModelIPhone4] ||
                 [deviceString isEqualToString:kDeviceModelIPhone4_1]) return @"iPhone4";
        else if ([deviceString isEqualToString:kDeviceModelIPhone4S]) return @"iPhone4S";
        else if ([deviceString isEqualToString:kDeviceModelIPhone5] ||
                 [deviceString isEqualToString:kDeviceModelIPhone5_1]) return @"iPhone5";
        else if ([deviceString isEqualToString:kDeviceModelIPhone5C] ||
                 [deviceString isEqualToString:kDeviceModelIPhone5C_1]) return @"iPhone5C";
        else if ([deviceString isEqualToString:kDeviceModelIPhone5S] ||
                 [deviceString isEqualToString:kDeviceModelIPhone5S_1]) return @"iPhone5S";
        else if ([deviceString isEqualToString:kDeviceModelIPhone6]) return @"iPhone6";
        else if ([deviceString isEqualToString:kDeviceModelIPhone6P]) return @"iPhone6 plus";
        else if ([deviceString isEqualToString:kDeviceModelIPhone6S]) return @"iPhone6S";
        else if ([deviceString isEqualToString:kDeviceModelIPhone6SP]) return @"iPhone6S plus";
        else if ([deviceString isEqualToString:kDeviceModelIPhoneSE]) return @"iPhoneSE";
        else if ([deviceString isEqualToString:kDeviceModelIPhone7] ||
                 [deviceString isEqualToString:kDeviceModelIPhone7_1]) return @"iPhone7";
        else if ([deviceString isEqualToString:kDeviceModelIPhone7P] ||
                 [deviceString isEqualToString:kDeviceModelIPhone7P_1]) return @"iPhone7 plus";
        else if ([deviceString isEqualToString:kDeviceModelIPhone8] ||
                 [deviceString isEqualToString:kDeviceModelIPhone8_1]) return @"iPhone8";
        else if ([deviceString isEqualToString:kDeviceModelIPhone8P] ||
                 [deviceString isEqualToString:kDeviceModelIPhone8P_1]) return @"iPhone8 plus";
        else if ([deviceString isEqualToString:kDeviceModelIPhoneX] ||
                 [deviceString isEqualToString:kDeviceModelIPhoneX_1]) return @"iPhoneX";
        else if ([deviceString isEqualToString:kDeviceModelIPhoneXSMax] ||
                 [deviceString isEqualToString:kDeviceModelIPhoneXSMax_1]) return @"iPhone XS Max";
        else if ([deviceString isEqualToString:kDeviceModelIPhoneXS]) return @"iPhone XS";
        else if ([deviceString isEqualToString:kDeviceModelIPhoneXR] ) return @"iPhone XR";
        else if ([deviceString isEqualToString:kDeviceModelIPhone11] ) return @"iPhone11";
        else if ([deviceString isEqualToString:kDeviceModelIPhone11_Pro] ) return @"iPhone11 Pro";
        else if ([deviceString isEqualToString:kDeviceModelIPhone11_Pro_Max] ) return @"iPhone11 Pro Max";
        else return @"iPhone";
    } else if ([deviceString hasPrefix:@"iPod"]) {
        if ([deviceString isEqualToString:kDeviceModelIPodTouch1G]) return @"iPod touch1";
        else if ([deviceString isEqualToString:kDeviceModelIPodTouch2G]) return @"iPod touch2";
        else if ([deviceString isEqualToString:kDeviceModelIPodTouch3G]) return @"iPod touch3";
        else if ([deviceString isEqualToString:kDeviceModelIPodTouch4G]) return @"iPod touch4";
        else if ([deviceString isEqualToString:kDeviceModelIPodTouch5G]) return @"iPod touch5";
        else if ([deviceString isEqualToString:kDeviceModelIPodTouch6G]) return @"iPod touch6";
        else if ([deviceString isEqualToString:kDeviceModelIPodTouch7G]) return @"iPod touch7";
        else return @"iPod";
    } else if ([deviceString hasPrefix:@"iPad"]) {
        // Classic iPad 9.7 inch
        if ([deviceString isEqualToString:kDeviceModelIPad]) return @"iPad1";
        else if ([deviceString isEqualToString:kDeviceModelIPad2] ||
                 [deviceString isEqualToString:kDeviceModelIPad2_1] ||
                 [deviceString isEqualToString:kDeviceModelIPad2_2] ||
                 [deviceString isEqualToString:kDeviceModelIPad2_3]) return @"iPad2";
        else if ([deviceString isEqualToString:kDeviceModelIPad3] ||
                 [deviceString isEqualToString:kDeviceModelIPad3_1] ||
                 [deviceString isEqualToString:kDeviceModelIPad3_2]) return @"iPad3";
        else if ([deviceString isEqualToString:kDeviceModelIPad4] ||
                 [deviceString isEqualToString:kDeviceModelIPad4_1] ||
                 [deviceString isEqualToString:kDeviceModelIPad4_2]) return @"iPad4";
        else if ([deviceString isEqualToString:kDeviceModelIPad5_1] ||
                 [deviceString isEqualToString:kDeviceModelIPad5_2]) return @"iPad5";
        else if ([deviceString isEqualToString:kDeviceModelIPad6_1] ||
                 [deviceString isEqualToString:kDeviceModelIPad6_2]) return @"iPad6";
        else if ([deviceString isEqualToString:kDeviceModelIPad7_1] ||
                 [deviceString isEqualToString:kDeviceModelIPad7_2]) return @"iPad7";
        else if ([deviceString isEqualToString:kDeviceModelIPadAir] ||
                 [deviceString isEqualToString:kDeviceModelIPadAir_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadAir_2]) return @"iPad Air";
        else if ([deviceString isEqualToString:kDeviceModelIPadAir2] ||
                 [deviceString isEqualToString:kDeviceModelIPadAir2_1]) return @"iPad Air2";
        else if ([deviceString isEqualToString:kDeviceModelIPadAir3] ||
                 [deviceString isEqualToString:kDeviceModelIPadAir3_1]) return @"iPad Air3";
        // iPad Pro
        else if ([deviceString isEqualToString:kDeviceModelIPadPro97INCH] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro97INCH_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro129INCH] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro129INCH_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro129INCH2] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro129INCH2_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro105INCH2] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro105INCH2_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro11INCH] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro11INCH_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro11INCH_2] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro11INCH_3] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro3129INCH] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro3129INCH_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro3129INCH_2] ||
                 [deviceString isEqualToString:kDeviceModelIPadPro3129INCH_3]
                 ) return @"iPad Pro";
        // iPad Mini
        else if ([deviceString isEqualToString:kDeviceModelIPadMini] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini_2]) return @"iPad Mini";
        else if ([deviceString isEqualToString:kDeviceModelIPadMini2] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini2_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini2_2]) return @"iPad Mini2";
        else if ([deviceString isEqualToString:kDeviceModelIPadMini3] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini3_1] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini3_2]) return @"iPad Mini3";
        else if ([deviceString isEqualToString:kDeviceModelIPadMini4] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini4_1]) return @"iPad Mini4";
        else if ([deviceString isEqualToString:kDeviceModelIPadMini5] ||
                 [deviceString isEqualToString:kDeviceModelIPadMini5_1]) return @"iPad Mini5";
        else return @"iPad";
    } else if ([deviceString isEqualToString:@"i386"] || [deviceString isEqualToString:@"x86_64"]) {
        return @"iPhone Sim";
    }
    return @"unknown";
}



@end
