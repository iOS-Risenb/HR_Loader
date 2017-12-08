

#import "UITableView+HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"

@implementation UITableView (HR_Loader)

- (void)HR_RegisterNibCell:(NSString *)nibName bundleName:(NSString *)bundleName {
    [self HR_RegisterNibCell:nibName identifier:nibName bundleName:bundleName];
}

- (void)HR_RegisterNibCell:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName {
    [self registerNib:[UINib nibWithNibName:nibName bundle:[NSBundle HR_SubBundle:bundleName]] forCellReuseIdentifier:identifier];
}

- (void)HR_RegisterNibHeaderFooter:(NSString *)nibName bundleName:(NSString *)bundleName {
    [self HR_RegisterNibHeaderFooter:nibName identifier:nibName bundleName:bundleName];
}
- (void)HR_RegisterNibHeaderFooter:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName {
    [self registerNib:[UINib nibWithNibName:nibName bundle:[NSBundle HR_SubBundle:bundleName]] forHeaderFooterViewReuseIdentifier:identifier];
}

@end
