//
//  NSBundle+HR_SubBundle.m
//  HRCMP_Load
//
//  Created by Obgniyum on 2017/10/27.
//

#import "NSBundle+HR_SubBundle.h"

@implementation NSBundle (HR_SubBundle)

+ (NSBundle *)HR_SubBundle:(NSString *)subBundleName {
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *mainBundlePath = mainBundle.bundlePath;
    subBundleName = [subBundleName stringByAppendingString:@".bundle"];
    NSString *subBundlePath = [mainBundlePath stringByAppendingPathComponent:subBundleName];
    NSBundle *subBundle = [NSBundle bundleWithPath:subBundlePath];
    return subBundle;
}

@end
