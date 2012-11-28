//
//  MoveImageViewController.h
//  MoveImage
//
//  Created by rashid khaleefa on 28/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoveImageViewController : UIViewController

@property (nonatomic,retain) IBOutlet UIImageView *imageview;

- (void) removeWithSinkAnimation:(int)steps;
- (void) removeWithSinkAnimationRotateTimer:(NSTimer*) timer;

-(IBAction)remove:(id)sender;
@end
