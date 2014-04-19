//
//  ViewController.m
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Root view controller and main menu view controller

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize currViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Changes view to the length conversion screen
- (IBAction)lengthButton:(id)sender {
    [self setCurrViewController:[[LengthViewController alloc] initWithNibName:@"LengthViewController" bundle:nil]];
    UIWindow *win = [[UIApplication sharedApplication] keyWindow];
    [[self view] removeFromSuperview];
    [win addSubview:[currViewController view]];
}

// Changes view to the mass conversion screen
- (IBAction)massButton:(id)sender {
    [self setCurrViewController:[[MassViewController alloc] initWithNibName:@"MassViewController" bundle:nil]];
    UIWindow *win = [[UIApplication sharedApplication] keyWindow];
    [[self view] removeFromSuperview];
    [win addSubview:[currViewController view]];
}

// Changes view to the temperature conversion screen
- (IBAction)tempButton:(id)sender {
    [self setCurrViewController:[[TempViewController alloc] initWithNibName:@"TempViewController" bundle:nil]];
    UIWindow *win = [[UIApplication sharedApplication] keyWindow];
    [[self view] removeFromSuperview];
    [win addSubview:[currViewController view]];
}
@end
