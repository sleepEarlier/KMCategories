//
//  NSString+kmExt.h
//  Project
//
//  Created by kimiLin on 2016/11/25.
//  Copyright © 2016年 kimiLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (KMExtension)

/// MD5 Encoded String
- (NSString *) km_md5;

/// UUID String
+ (NSString *) km_uniqueString;

/// URL Encoded String
- (NSString *) km_urlEncodedString;

/// URL Decoded String
- (NSString *) km_urlDecodedString;

/// Json str to Json obj
- (id) km_JSONObject;

/// full string range
- (NSRange)km_range;


/**
 Chinese character to Pinyin
 will cost much more time and memory first time invoked, looks better after then.
 for more stable and better performance you can try https://github.com/kimziv/PinYin4Objc
 @return Pinyin string
 */
- (NSString *)pinyinString;

@end
