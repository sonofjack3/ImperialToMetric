//
//  LengthViewController.h
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Length conversion screen view controller

#import <UIKit/UIKit.h>
#define INCH_CONVERSION 2.540 //1 inch = 2.540 cm
#define FEET_CONVERSION 0.3048 //1 foot = 0.3048 m
#define MILES_CONVERSION 1.609 //1 mile = 1.609 km

@interface LengthViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inchTextField; //text field where user enters length in inches
- (IBAction)convertInchesButton:(id)sender; //converts inches to centimeters

@property (weak, nonatomic) IBOutlet UILabel *centimetersResultLabel; //label containing converted value in cm
@property (weak, nonatomic) IBOutlet UITextField *feetTextField; //text field where user enters length in feet
@property (weak, nonatomic) IBOutlet UILabel *metersResultLabel; //label containing converted value in meters

- (IBAction)convertFeetButton:(id)sender; //converts feet to meters
@property (weak, nonatomic) IBOutlet UITextField *milesTextField; //text field where user enters length in miles
- (IBAction)convertMilesButton:(id)sender; //converts miles to kilometers
@property (weak, nonatomic) IBOutlet UILabel *kilometersResultLabel; //label containing converted value in kilometers

@property (weak, nonatomic) IBOutlet UIButton *doneAction; //brings user back to main menu

@end
