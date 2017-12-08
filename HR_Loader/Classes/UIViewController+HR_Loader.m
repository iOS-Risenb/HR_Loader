

#import "UIViewController+HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"

@implementation UIViewController (HR_Loader)

+ (UIViewController *)HR_NibLoadWithBundle:(NSString *)bundleName {
    return [[self alloc] initWithNibName:NSStringFromClass([self class]) bundle:[NSBundle HR_SubBundle:bundleName]];
}

@end
