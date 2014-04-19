//
//  TempViewController.h
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Temperature conversion screen view controller

#import <UIKit/UIKit.h>
#define TEMP_CONVERSION_1 32
#define TEMP_CONVERSION_2 5/9 //C = (F - 32) * 5/9

@interface TempViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tempTextField; //text field where user enters temperature in Farenheit
- (IBAction)farenheitConvertButton:(id)sender; //converts Farenheit to Celsius
@property (weak, nonatomic) IBOutlet UILabel *celsiusResultLabel; //label containing converted value in Celsius

- (IBAction)doneAction:(id)sender; //brings user back to main menu

@end
