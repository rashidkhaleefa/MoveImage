//
//  MoveImageViewController.m
//  MoveImage
//
//  Created by rashid khaleefa on 28/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MoveImageViewController.h"

@implementation MoveImageViewController
@synthesize  imageview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{

    CGPoint pt = [[touches anyObject] locationInView:self.view];
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    
    //you can change the setAnimationDuration value, it is in seconds.
    
    CGRect rect = CGRectMake(pt.x, pt.y, imageview.frame.size.height, imageview.frame.size.width);
    
    [imageview setFrame:rect];
    
    [UIView commitAnimations];
}


- (void) removeWithSinkAnimation:(int)steps
{
	NSTimer *timer;
	if (steps > 0 && steps < 100)
		self.imageview.tag = steps;
	else
		self.imageview.tag = 50;
	timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(removeWithSinkAnimationRotateTimer:) userInfo:nil repeats:YES];
}

- (void) removeWithSinkAnimationRotateTimer:(NSTimer*) timer
{
	CGAffineTransform trans = CGAffineTransformRotate(CGAffineTransformScale(self.imageview.transform, 0.9, 0.9),0.314);
	self.imageview.transform = trans;
	self.imageview.alpha = self.imageview.alpha * 0.98;
	self.imageview.tag = self.imageview.tag - 1;
	if (self.imageview.tag <= 0)
	{
		[timer invalidate];
		[self.imageview removeFromSuperview];
	}
}

-(IBAction)remove:(id)sender{
    [self removeWithSinkAnimation:40];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
