

#import <UIKit/UIKit.h>

@interface UICollectionView (HR_Loader)

- (void)HR_RegisterNibCell:(NSString *)nibName bundleName:(NSString *)bundleName;
- (void)HR_RegisterNibCell:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName;

- (void)HR_RegisterNibHeader:(NSString *)nibName bundleName:(NSString *)bundleName;
- (void)HR_RegisterNibHeader:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName;

- (void)HR_RegisterNibFooter:(NSString *)nibName bundleName:(NSString *)bundleName;
- (void)HR_RegisterNibFooter:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName;

@end
