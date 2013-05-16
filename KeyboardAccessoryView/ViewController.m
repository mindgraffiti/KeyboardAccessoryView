//
//  ViewController.m
//  KeyboardAccessoryView
//
//  Created by Thuy Copeland on 5/15/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// attach the toolBar to respond to the textField's inputAccessoryView
    self.textField1.inputAccessoryView = self.inputToolBar;
    self.textField2.inputAccessoryView = self.inputToolBar;
    self.textField3.inputAccessoryView = self.inputToolBar;
    self.textField4.inputAccessoryView = self.inputToolBar;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - InputAccessoryView Button Methods

- (IBAction)nextPrevPressed:(id)sender{
    UISegmentedControl *control = (UISegmentedControl *)sender;
    
    if (control.selectedSegmentIndex == 0) {
        // previous pressed
        [self previousField];
        
    } else {
        // next pressed
        [self nextField];
    }
}

- (void)previousField{
    // we want a textField, and we want the one that is the first responder.
    // .findFirstResponder loops through them all and asks, 'are you the first responder?'
    UITextField *textField = (UITextField *)self.view.findFirstResponder;
    
    if (textField == self.textField1) {
        [self.textField4 becomeFirstResponder];
    } else if (textField == self.textField2){
        [self.textField1 becomeFirstResponder];
    } else if (textField == self.textField3){
        [self.textField2 becomeFirstResponder];
    } else if (textField == self.textField4){
        [self.textField3 becomeFirstResponder];
    }
}

- (void)nextField{
    UITextField *textField = (UITextField *)self.view.findFirstResponder;
    if (textField == self.textField1) {
        [self.textField2 becomeFirstResponder];
    } else if (textField == self.textField2){
        [self.textField3 becomeFirstResponder];
    } else if (textField == self.textField3){
        [self.textField4 becomeFirstResponder];
    } else if (textField == self.textField4){
        [self.textField1 becomeFirstResponder];
    }
}

- (IBAction)clearPressed:(id)sender{
    UITextField *textField = (UITextField *)self.view.findFirstResponder;
    textField.text = @"";
}

#pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    // Now when you hit the return key, it will dismiss the keyboard.
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - UIScrollViewDelegate Methods


@end
