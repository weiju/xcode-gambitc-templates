//
//  iphonegl_tmplAppDelegate.m
//  iphonegl_tmpl
//
//  Created by Wei-Ju Wu on 7/25/09.
//  Copyright Box of Rats LLC 2009. All rights reserved.
//

#import "iphonegl_tmplAppDelegate.h"
#import "EAGLView.h"

@implementation iphonegl_tmplAppDelegate

@synthesize window;
@synthesize glView;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
}


- (void)applicationWillResignActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 5.0;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 60.0;
}


- (void)dealloc {
	[window release];
	[glView release];
	[super dealloc];
}

@end
