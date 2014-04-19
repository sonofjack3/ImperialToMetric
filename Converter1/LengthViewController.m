//
//  LengthViewController.m
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Length conversion screen view controller

#import "LengthViewController.h"

@interface LengthViewController ()

@end

@implementation LengthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Loads the view and sets the delegate of each text field as this view controller
- (void)viewDidLoad
{
    [super viewDidLoad];
    _inchTextField.delegate = self;
    _feetTextField.delegate = self;
    _milesTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Dismisses the keyboard on RETURN
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

// Converts inches to centimeters and updates the centimetersResultLabel with the converted result
- (IBAction)convertInchesButton:(id)sender
{
    [self textFieldShouldReturn:_inchTextField]; //dismiss keyboard on button press
    float result = [[_inchTextField text] floatValue] * INCH_CONVERSION;
    [_centimetersResultLabel setText:[NSString stringWithFormat:@"In centimeters: %.2f cm", result]];
}

// Converts feet to meters and updates the metersResultLabel with the converted result
- (IBAction)convertFeetButton:(id)sender
{
    [self textFieldShouldReturn:_feetTextField]; //dismiss keyboard on button press
    float result = [[_feetTextField text] floatValue] * FEET_CONVERSION;
    [_metersResultLabel setText:[NSString stringWithFormat:@"In meters: %.2f m", result]];
}

// Converts miles to kilometers and updates the kilometerResultLabel with the converted result
- (IBAction)convertMilesButton:(id)sender
{
    [self textFieldShouldReturn:_milesTextField]; //dismiss keyboard on button press
    float result = [[_milesTextField text] floatValue] * MILES_CONVERSION;
    [_kilometersResultLabel setText:[NSString stringWithFormat:@"In kilometers: %.2f km", result]];
}

// Returns user to the main menu
- (IBAction)doneAction:(id)sender {
    UIWindow *win = [[UIApplication sharedApplication] keyWindow];
    UIViewController *rootController = [win rootViewController];
    [[self view] removeFromSuperview];
    [win addSubview:[rootController view]];
}
@end
