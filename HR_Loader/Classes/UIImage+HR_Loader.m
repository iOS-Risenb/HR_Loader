

#import "UIImage+HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"

@implementation UIImage (HR_Loader)

+ (UIImage *)HR_ImageName:(NSString *)imageName bundleName:(NSString *)bundleName {
    return [UIImage imageNamed:imageName inBundle:[NSBundle HR_SubBundle:bundleName] compatibleWithTraitCollection:nil];;
}

@end
