

#import "UICollectionView+HR_Loader.h"
#import "NSBundle+HR_SubBundle.h"

@implementation UICollectionView (HR_Loader)

#pragma mark - Cell

- (void)HR_RegisterNibCell:(NSString *)nibName bundleName:(NSString *)bundleName {
    [self HR_RegisterNibCell:nibName identifier:nibName bundleName:bundleName];
}

- (void)HR_RegisterNibCell:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName {
    [self registerNib:[UINib nibWithNibName:nibName bundle:[NSBundle HR_SubBundle:bundleName]] forCellWithReuseIdentifier:identifier];
}

#pragma mark - Header

- (void)HR_RegisterNibHeader:(NSString *)nibName bundleName:(NSString *)bundleName {
    [self registerNib:[UINib nibWithNibName:nibName bundle:[NSBundle HR_SubBundle:bundleName]] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:nibName];
}

- (void)HR_RegisterNibHeader:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName {
    [self HR_RegisterNibHeader:nibName identifier:identifier bundleName:bundleName];
}

#pragma mark - Footer

- (void)HR_RegisterNibFooter:(NSString *)nibName bundleName:(NSString *)bundleName {
    [self HR_RegisterNibFooter:nibName identifier:nibName bundleName:bundleName];
}

- (void)HR_RegisterNibFooter:(NSString *)nibName identifier:(NSString *)identifier bundleName:(NSString *)bundleName {
    [self registerNib:[UINib nibWithNibName:nibName bundle:[NSBundle HR_SubBundle:bundleName]] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:identifier];
}

@end
