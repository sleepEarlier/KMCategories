//
//  NSFileManager+KMExtension.h
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (KMExtension)

/// check if file exists (no matter it's directory or not)
+ (BOOL)km_fileExistsAt:(NSString *)path;

/// check if a directory exists
+ (BOOL)km_directoryExistsAt:(NSString *)path;

@end
