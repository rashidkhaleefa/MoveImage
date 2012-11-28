//
//  delegateAppDelegate.h
//  MoveImage
//
//  Created by rashid khaleefa on 28/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoveImageViewController.h"
@class MoveImageViewController;
@interface delegateAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet MoveImageViewController *viewController;

@end
