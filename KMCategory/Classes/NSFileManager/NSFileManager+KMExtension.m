//
//  NSFileManager+KMExtension.m
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import "NSFileManager+KMExtension.h"

@implementation NSFileManager (KMExtension)

+ (BOOL)km_fileExistsAt:(NSString *)path {
    return [[self defaultManager] fileExistsAtPath:path];
}

+ (BOOL)km_directoryExistsAt:(NSString *)path {
    BOOL isDir = NO;
    return [[self defaultManager] fileExistsAtPath:path isDirectory:&isDir] && isDir;
}


@end
