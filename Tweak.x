#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UISystemShellApplication : UIApplication
@end

@interface SpringBoard : UISystemShellApplication
-(void)_simulateHomeButtonPress;
-(void)_simulateLockButtonPress; // depreceted method
-(void)_simulateHomeButtonPressWithCompletion:(/*^block*/id)arg1 ;
@end

%hook SpringBoard
%new
-(void)_simulateHomeButtonPress {
	return [self _simulateHomeButtonPressWithCompletion:nil];
}
%end