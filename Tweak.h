@interface NCNotificationListCell : UIView
@end

@interface PLGlyphControl : UIControl
@end

@interface NCToggleControl : PLGlyphControl
@property (nonatomic,copy) NSString * title; 
// %new
-(void)changeAppearance:(UIColor *)color;
@end

@interface PLExpandedPlatterView : UIView
@end 

@interface NCNotificationLongLookView : PLExpandedPlatterView
@end

@interface NCNotificationListCellActionButtonsView : UIView
@property (nonatomic,retain) UIStackView * buttonsStackView;                                           //@synthesize buttonsStackView=_buttonsStackView - In the implementation block
// %new
-(void)changeAppearance:(UIColor *)color;
@end

@interface NCNotificationListCellActionButton : UIControl
@end

@interface NCNotificationStructuredListViewController : UIViewController
// %new
-(void)didChangeAppearance:(NSNotification *)notification;
@end

@interface NCNotificationViewController : UIViewController
@end

@interface NCNotificationShortLookViewController : NCNotificationViewController
@property (nonatomic,readonly) UIView * viewForPreview;
// %new
-(void)changeAppearance:(UIColor *)color;
-(void)didChangeAppearance:(NSNotification *)notification;
@end

@interface CSDNDBedtimeController : NSObject
@property (assign,getter=isActive,nonatomic) BOOL active;              //@synthesize active=_active - In the implementation block
@end

/*@interface UICollectionReusableView : UIView
@end

@interface UICollectionViewCell : UICollectionReusableView
@end*/

@interface NCNotificationListCoalescingHeaderCell : UICollectionViewCell
@end

@interface NCNotificationListCoalescingControlsCell : UIView
@end



@interface UIUserInterfaceStyleArbiter : NSObject
+(id)sharedInstance;
@property (nonatomic,readonly) long long currentStyle;
@end
