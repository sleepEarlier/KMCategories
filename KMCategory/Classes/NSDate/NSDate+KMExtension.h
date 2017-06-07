//
//  NSDate+KMExtension.h
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (KMExtension)

/// format date string, default format set to @"@"yyyy-MM-dd HH:mm:ss""
- (NSString *)km_dateString;

/// format date string with custom dateFormat (use default format if param is nil), this dateFormat won't change default format 
- (NSString *)km_dateStringWithFormat:(NSString *)dateFormat;

/// change the default format
+ (void)km_setDefaultFormat:(NSString *)newFormat;

@end
