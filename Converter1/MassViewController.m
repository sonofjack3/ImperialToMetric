//
//  MassViewController.m
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Mass conversion screen view controller

#import "MassViewController.h"

@interface MassViewController ()

@end

@implementation MassViewController

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
    _ouncesTextField.delegate = self;
    _poundsTextField.delegate = self;
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

// Convert ounces to grams and updates the gramsResultLabel with the converted value
- (IBAction)ouncesConvertButton:(id)sender
{
    [self textFieldShouldReturn:_ouncesTextField]; //dismiss keyboard on button press
    float result = [[_ouncesTextField text] floatValue] * OUNCES_CONVERSION;
    [_gramsResultLabel setText:[NSString stringWithFormat:@"In grams: %.2f g", result]];
}

// Converts pounds to kilograms and updates the kilogramsResultLabel with the converted value
- (IBAction)poundsConvertButton:(id)sender
{
    [self textFieldShouldReturn:_poundsTextField]; //dismiss keyboard on button press
    float result = [[_poundsTextField text] floatValue] * POUNDS_CONVERSION;
    [_kilogramsResultLabel setText:[NSString stringWithFormat:@"In kilograms: %.2f kg", result]];
}

// Brings user back to main menu
- (IBAction)doneAction:(id)sender {
    UIWindow *win = [[UIApplication sharedApplication] keyWindow];
    UIViewController *rootController = [win rootViewController];
    [[self view] removeFromSuperview];
    [win addSubview:[rootController view]];
}
@end
