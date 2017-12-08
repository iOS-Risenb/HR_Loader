

#import <UIKit/UIKit.h>

@interface UITableView (HR_Loader)

- (void)HR_RegisterNibCell:(NSString *)nibName bundleName:(NSString *)bundleName;
- (void)HR_RegisterNibCell:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName;

- (void)HR_RegisterNibHeaderFooter:(NSString *)nibName bundleName:(NSString *)bundleName;;
- (void)HR_RegisterNibHeaderFooter:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName;

@end
