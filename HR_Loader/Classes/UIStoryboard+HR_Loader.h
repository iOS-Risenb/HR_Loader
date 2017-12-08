//
//  UIStoryboard+HR_Loader.h
//  HRCMP_Load
//
//  Created by Obgniyum on 2017/10/27.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (HR_Loader)

+ (UIStoryboard *)HR_StoryBoard:(NSString *)storyBoardName subBundleName:(NSString *)subBundleName;
+ (UIViewController *)HR_InitialViewControllerInStoryBoard:(NSString *)storyBoardName subBundleName:(NSString *)subBundleName;
+ (UIViewController *)HR_ViewControllerWithIdentifier:(NSString *)identifier storyBoardName:(NSString *)storyBoardName subBundleName:(NSString *)subBundleName;

@end
