//
//  ExampleViewController.m
//  Example
//
//  Created by Aaron Brethorst on 7/21/11.
//  Copyright 2011 Structlab LLC. All rights reserved.
//

#import "ExampleViewController.h"

@implementation ExampleViewController
@synthesize spinner;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.spinner startAnimating];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.spinner = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
