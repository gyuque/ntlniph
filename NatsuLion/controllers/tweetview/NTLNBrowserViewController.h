#import <UIKit/UIKit.h>
#import "NTLNAccelerometerSensor.h"
#import "NTLNWebView.h"
#import "NTLNBrowserTitleView.h"

@interface NTLNBrowserViewController : UIViewController<UIWebViewDelegate> {
	NSString *url;
	NTLNWebView *webView;
	UIToolbar *toobarTop;
	UIToolbar *toobarBottom;

	BOOL loading;
	
	UIBarButtonItem *title;
	NTLNBrowserTitleView *titleView;
	
	UIBarButtonItem *reloadButton;
	UIBarButtonItem *prevButton;
	UIBarButtonItem *nextButton;

	NSMutableArray *toobarTopItems;
	id internalWebView;
}

@property (readwrite, retain) NSString *url;

@end
