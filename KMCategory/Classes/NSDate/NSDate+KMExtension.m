//
//  NSDate+KMExtension.m
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import "NSDate+KMExtension.h"

@implementation NSDate (KMExtension)

+ (NSDateFormatter *)km_formatter {
    static NSDateFormatter *formatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [[NSDateFormatter alloc] init];
        formatter.timeZone = [NSTimeZone systemTimeZone];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    });
    return formatter;
}

+ (void)km_setDefaultFormat:(NSString *)newFormat {
    if (newFormat.length > 0) {
        NSDateFormatter *formatter = [NSDate km_formatter];
        formatter.dateFormat = newFormat;
    }
}

- (NSString *)km_dateString {
    return [[NSDate km_formatter] stringFromDate:self];
}

- (NSString *)km_dateStringWithFormat:(NSString *)dateFormat {
    NSDateFormatter *formatter = [NSDate km_formatter];
    NSString *defaultFormat = formatter.dateFormat;
    if (dateFormat.length > 0) {
        formatter.dateFormat = dateFormat;
    }
    NSString *result = [formatter stringFromDate:self];
    formatter.dateFormat = defaultFormat;
    return result;
}

@end
