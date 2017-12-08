#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"
#import "UICollectionView+HR_Loader.h"
#import "UIImage+HR_Loader.h"
#import "UIStoryboard+HR_Loader.h"
#import "UITableView+HR_Loader.h"
#import "UIView+HR_Loader.h"
#import "UIViewController+HR_Loader.h"

FOUNDATION_EXPORT double HR_LoaderVersionNumber;
FOUNDATION_EXPORT const unsigned char HR_LoaderVersionString[];

