//
//  UIDevice+KMExtension.h
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (KMExtension)

/// if is current sys version >= target version
+ (BOOL)km_afterSystemVersion:(NSString *)comparedVersion;

/// make device vibrate
+ (void)vibrate;


@end
