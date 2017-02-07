//
//  UIImage+kmExt.m
//  Project
//
//  Created by kimiLin on 2016/11/25.
//  Copyright © 2016年 kimiLin. All rights reserved.
//

#import "UIImage+kmExt.h"

@implementation UIImage (kmExt)

+ (UIImage *) km_resizeImageWithName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:@"Image"];
    CGFloat wid = image.size.width * 0.5;
    CGFloat hei = image.size.height * 0.5;
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(hei, wid, hei, wid)];
}

+ (UIImage *) km_imageWithColor:(UIColor *)color
{
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}


+ (instancetype)km_screenShowImageWithStatusBar:(BOOL)containStatusBar {
    
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    CGRect bounds = window.bounds;
    
    UIGraphicsBeginImageContextWithOptions(window.bounds.size, YES, [UIScreen mainScreen].scale);
    
    [window drawViewHierarchyInRect:bounds afterScreenUpdates:YES];
    
    if (containStatusBar) {
        UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBar"] valueForKey:@"foregroundView"];
        [statusBar drawViewHierarchyInRect:CGRectMake(0, 0, bounds.size.width, 20) afterScreenUpdates:YES];
    }
    
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    if ([UIDevice currentDevice].systemVersion.floatValue < 8.0) {
        image = [self rotateUIInterfaceOrientationImage:image];
    }
    return image;
}

- (UIImage*) convertToGreyScale
{
    // Create image rectangle with current image width/height
    CGRect imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    // Grayscale color space
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
    
    // Create bitmap content with current image size and grayscale colorspace
    CGContextRef context = CGBitmapContextCreate(nil, self.size.width, self.size.height, 8, 0, colorSpace, kCGImageAlphaNone);
    
    // Draw image into current context, with specified rectangle
    // using previously defined context (with grayscale colorspace)
    CGContextDrawImage(context, imageRect, [self CGImage]);
    
    // Create bitmap image info from pixel data in current context
    CGImageRef imageRef = CGBitmapContextCreateImage(context);
    
    // Create a new UIImage object
    UIImage *newImage = [UIImage imageWithCGImage:imageRef];
    
    // Release colorspace, context and bitmap information
    CGColorSpaceRelease(colorSpace);
    CGContextRelease(context);
    CFRelease(imageRef);
    
    // Return the new grayscale image
    return newImage;
}

#pragma mark - Helper
+(UIImage *)rotateUIInterfaceOrientationImage:(UIImage *)image{
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    switch (orientation) {
        case UIInterfaceOrientationLandscapeRight:
        {
            image = [UIImage imageWithCGImage:image.CGImage scale:1 orientation:UIImageOrientationLeft];
        }
            break;
        case UIInterfaceOrientationLandscapeLeft:
        {
            image = [UIImage imageWithCGImage:image.CGImage scale:1 orientation:UIImageOrientationRight];
        }
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
        {
            image = [UIImage imageWithCGImage:image.CGImage scale:1 orientation:UIImageOrientationDown];
        }
            break;
        case UIInterfaceOrientationPortrait:
        {
            image = [UIImage imageWithCGImage:image.CGImage scale:1 orientation:UIImageOrientationUp];
        }
            break;
        default:
            break;
    }
    
    return image;
}

@end