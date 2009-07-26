//
//  iphonegl_tmplAppDelegate.h
//  iphonegl_tmpl
//
//  Created by Wei-Ju Wu on 7/25/09.
//  Copyright Box of Rats LLC 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EAGLView;

@interface iphonegl_tmplAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EAGLView *glView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EAGLView *glView;

@end

