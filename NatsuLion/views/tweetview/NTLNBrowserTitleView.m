#import "NTLNBrowserTitleView.h"
#define PROGBAR_H 14
#define PROGBAR_PAD 30

@implementation NTLNBrowserTitleView
@synthesize progress;
@synthesize label;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		self.opaque = NO;
		[self buildView];
	}
    return self;
}

- (CGRect) makeProgressRect
{
	CGSize selfSize = self.frame.size;
	return CGRectMake(PROGBAR_PAD, selfSize.height-PROGBAR_H, selfSize.width - PROGBAR_PAD*2, PROGBAR_H-2);
}

- (void)buildView {
	CGSize selfSize = self.frame.size;	
	label = [[[UILabel alloc] initWithFrame: CGRectMake(0, 0, selfSize.width, selfSize.height-PROGBAR_H)]
				autorelease];

	label.opaque = NO;
	label.backgroundColor = nil;
	label.textAlignment = UITextAlignmentCenter;
	label.textColor = [UIColor whiteColor];
	[self addSubview: label];
	
	progress = [[[UIProgressView alloc] initWithFrame: [self makeProgressRect]]
				  autorelease];
	[self addSubview: progress];
}

- (void)showProgress
{
	CGSize selfSize = self.frame.size;	
	int h = selfSize.height-PROGBAR_H;
	CGRect rcLabel = CGRectMake(0, 0, selfSize.width, h);
	CGRect rcProg = [self makeProgressRect];
	
	label.frame = rcLabel;
	progress.frame = rcProg;
	progress.alpha = 1;
}

- (void)hideProgress
{
	CGSize selfSize = self.frame.size;	

	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3f];
	label.frame = CGRectMake(0, 0, selfSize.width, selfSize.height);
	progress.alpha = 0;
	[UIView commitAnimations];
}

- (void)dealloc {
    [super dealloc];
}

@end
