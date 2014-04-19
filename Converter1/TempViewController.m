//
//  TempViewController.m
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Temperature conversion screen view controller

#import "TempViewController.h"

@interface TempViewController ()

@end

@implementation TempViewController

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
    _tempTextField.delegate = self;
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

// Converts Farenheit to Celsius and updates the celsiusResultLabel with the converted result
- (IBAction)farenheitConvertButton:(id)sender
{
    [self textFieldShouldReturn:_tempTextField];
    float result = ([[_tempTextField text] floatValue] - TEMP_CONVERSION_1) * TEMP_CONVERSION_2;
    [_celsiusResultLabel setText:[NSString stringWithFormat:@"In Celsius: %.2f C", result]];
}

// Brings user back to main menu
- (IBAction)doneAction:(id)sender {
    UIWindow *win = [[UIApplication sharedApplication] keyWindow];
    UIViewController *rootController = [win rootViewController];
    [[self view] removeFromSuperview];
    [win addSubview:[rootController view]];
}

@end
