

#import "UIStoryboard+HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"

@implementation UIStoryboard (HR_Loader)
    
+ (UIStoryboard *)HR_StoryBoard:(NSString *)storyBoardName subBundleName:(NSString *)SBBDName {
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *mainBundlePath = mainBundle.bundlePath;
    
    NSString *subBundleName = [SBBDName stringByAppendingString:@".bundle"];
    NSString *subBundlePath = [mainBundlePath stringByAppendingPathComponent:subBundleName];
    NSBundle *subBundle = [NSBundle bundleWithPath:subBundlePath];
    
    NSString *sbName = storyBoardName;
    NSString *sbPath = subBundle ? [subBundlePath stringByAppendingPathComponent:sbName] : [mainBundlePath stringByAppendingPathComponent:sbName];
    sbPath = [sbPath stringByAppendingString:@".storyboardc"];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:sbPath]) {
        return [UIStoryboard storyboardWithName:storyBoardName bundle:subBundle];
    } else {
        NSLog(@"Storyboard is not exist!");
        return nil;
    }
}
    
+ (UIViewController *)HR_InitialViewControllerInStoryBoard:(NSString *)storyBoardName subBundleName:(NSString *)subBundleName {
    if ([UIStoryboard HR_StoryBoard:storyBoardName subBundleName:subBundleName]) {
        return [UIStoryboard HR_StoryBoard:storyBoardName subBundleName:subBundleName].instantiateInitialViewController;
    } else {
        return nil;
    }
}
    
+ (UIViewController *)HR_ViewControllerWithIdentifier:(NSString *)identifier storyBoardName:(NSString *)storyBoardName subBundleName:(NSString *)subBundleName {
    if ([UIStoryboard HR_StoryBoard:storyBoardName subBundleName:subBundleName]) {
        return [[UIStoryboard HR_StoryBoard:storyBoardName subBundleName:subBundleName] instantiateViewControllerWithIdentifier:identifier];
    } else {
        return nil;
    }
}
    
    @end

