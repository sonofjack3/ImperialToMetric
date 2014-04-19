//
//  MassViewController.h
//  Converter1
//
//  Created by Evan Jackson on 2013-10-06.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Mass conversion screen view controller

#import <UIKit/UIKit.h>
#define OUNCES_CONVERSION 28.35 //1 ounce = 28.35 grams
#define POUNDS_CONVERSION 0.4536 //1 pound = 0.4536 kg

@interface MassViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *ouncesTextField; //text field where user enters mass in ounces
- (IBAction)ouncesConvertButton:(id)sender; //converts ounces to grams
@property (weak, nonatomic) IBOutlet UILabel *gramsResultLabel; //label containing the converted result in grams

@property (weak, nonatomic) IBOutlet UITextField *poundsTextField; //text field where user enters mass in pounds
- (IBAction)poundsConvertButton:(id)sender; //converts pounds to kilograms
@property (weak, nonatomic) IBOutlet UILabel *kilogramsResultLabel; //label containing the converted result in kilograms

- (IBAction)doneAction:(id)sender; //brings user back to main menu

@end
