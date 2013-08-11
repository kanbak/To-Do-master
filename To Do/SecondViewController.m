//
//  SecondViewController.m
//  To Do
//
//  Created by Umut Kanbak on 7/17/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    __weak IBOutlet UITextField *toDoText;
    __weak IBOutlet UIButton *updateToDoButton;
    
}
- (IBAction)updateToDo:(id)sender;
<<<<<<< HEAD

=======
>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705
@end

@implementation SecondViewController

@synthesize textValue;
@synthesize delegate;
<<<<<<< HEAD
=======

>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
<<<<<<< HEAD
    
=======
    toDoText.text = textValue;
    self.navigationItem.title = textValue;
    //give title to secondViewController on navigationController
    self.title = @"Edit To Do Item";

>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705
    //self.navigationController.title = textValue;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateToDo:(id)sender {
    [delegate updateToDoItem:toDoText.text];
<<<<<<< HEAD
    [self.view removeFromSuperview];
=======
    [self.navigationController popViewControllerAnimated:YES];
>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705

}
@end
