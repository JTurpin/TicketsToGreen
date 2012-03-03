//
//  ViewController.h
//  TicketsToGreen
//
//  Created by Jim Turpin on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *ttg;
@property (weak, nonatomic) IBOutlet UIButton *Refresh;
- (IBAction)Refresh_Pushed:(id)sender;
- (void)doTTGDataRefresh;

@end
