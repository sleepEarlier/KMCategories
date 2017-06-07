//
//  NSArray+KMExtension.m
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import "NSArray+KMExtension.h"

@implementation NSArray (KMExtension)

- (NSString *)km_jsonString {
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSData *data = [NSJSONSerialization dataWithJSONObject:self options:0 error:nil];
        if (data) {
            NSString *result = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            return result;
        }
        return nil;
    }
    return nil;
}

@end
