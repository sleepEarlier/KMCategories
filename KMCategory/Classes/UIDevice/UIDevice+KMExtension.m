//
//  UIDevice+KMExtension.m
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import "UIDevice+KMExtension.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation UIDevice (KMExtension)

+ (BOOL)km_afterSystemVersion:(NSString *)comparedVersion {
    return [[self km_sysVersion] compare:comparedVersion options:NSNumericSearch];
}

+ (NSString *)km_sysVersion {
    return [self currentDevice].systemVersion;
}

+ (void)vibrate{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

@end
