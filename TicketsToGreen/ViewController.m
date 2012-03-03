//
//  ViewController.m
//  TicketsToGreen
//
//  Created by Jim Turpin on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize ttg;
@synthesize Refresh;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self doTTGDataRefresh ];
}

- (void)viewDidUnload
{
    [self setTtg:nil];
    [self setRefresh:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)doTTGDataRefresh
{
	// Let's update some data!
    NSString       *ttgURL = @"http://atrek.atrust.com/orb/ttg";    
    NSError* error = nil;
    
    NSString* text = [NSString stringWithContentsOfURL:[NSURL URLWithString:ttgURL] encoding:NSASCIIStringEncoding error:&error];
    if( text )
    {
        NSLog(@"Text=%@", text);
    }
    
    NSArray* ttgparts = [text componentsSeparatedByString: @","];
    self.ttg.text = [NSMutableString stringWithFormat:@"%@", [ttgparts objectAtIndex: 0] ]; 
}

- (IBAction)Refresh_Pushed:(id)sender {
    [self doTTGDataRefresh ];
}
@end
