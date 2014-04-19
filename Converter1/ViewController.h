//
//  ViewController.h
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Root view controller and main menu view controller

#import <UIKit/UIKit.h>
#import "LengthViewController.h"
#import "MassViewController.h"
#import "TempViewController.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property UIViewController *currViewController; //holds the current view controller
- (IBAction)lengthButton:(id)sender; //changes view to the length conversion screen
- (IBAction)massButton:(id)sender; //changes view to the mass converison screen
- (IBAction)tempButton:(id)sender; //changes view to the temperature conversion screen
@property (weak, nonatomic) IBOutlet UILabel *titleLabel; //label containing app title
@property (weak, nonatomic) IBOutlet UILabel *developerLabel; //label containing developer information

@end
