//
//  ViewController.h
//  KeyboardAccessoryView
//
//  Created by Thuy Copeland on 5/15/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *inputToolBar;
@property (weak, nonatomic) IBOutlet UIScrollView *sView;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UITextField *textField4;
- (IBAction)nextPrevPressed:(id)sender;
- (IBAction)clearPressed:(id)sender;
@end
