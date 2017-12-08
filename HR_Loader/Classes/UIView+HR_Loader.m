
#import "UIView+HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"

@implementation UIView (HR_Loader)

+ (UIView *)HR_NibLoadWithBundle:(NSString *)bundleName {
    return [[NSBundle HR_SubBundle:bundleName] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
}

@end
