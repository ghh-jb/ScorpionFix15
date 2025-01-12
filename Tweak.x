#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UISystemShellApplication : UIApplication
@end

@interface SpringBoard : UISystemShellApplication
-(void)_simulateHomeButtonPress;
-(void)_simulateLockButtonPress;
@end

%hook SpringBoard
%new
-(void)_simulateHomeButtonPress {
	return [self _simulateLockButtonPress];
}
%end