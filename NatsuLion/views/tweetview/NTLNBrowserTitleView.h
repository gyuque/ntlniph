#import <UIKit/UIKit.h>

@interface NTLNBrowserTitleView : UIView {
	UILabel *label;
	UIProgressView *progress;
}

@property (readonly, nonatomic) UIProgressView *progress;
@property (readonly, nonatomic) UILabel *label;

- (void)buildView;
- (void)showProgress;
- (void)hideProgress;

@end
