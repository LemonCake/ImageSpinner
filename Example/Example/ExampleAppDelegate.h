//
//  ExampleAppDelegate.h
//  Example
//
//  Created by Aaron Brethorst on 7/21/11.
//  Copyright 2011 Structlab LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleViewController;

@interface ExampleAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleViewController *viewController;

@end
