//
//  ViewController.m
//  To Do
//
//  Created by Umut Kanbak on 7/16/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
<<<<<<< HEAD
    SecondViewController *secondViewController;
    int row;
__weak IBOutlet UITextField *toDoTextField;

__weak IBOutlet UITableView *toDoTableView;
NSMutableArray *toDoArray;
=======
    int row;
    NSUInteger row2 ;
    NSUInteger count;
    __weak IBOutlet UITextField *toDoTextField;
    __weak IBOutlet UITableView *toDoTableView;
    NSMutableArray *toDoArray;//
>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705
}
- (IBAction)addToDo:(id)sender;
- (IBAction)removeToDo:(id)sender;
@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    toDoArray = [NSMutableArray arrayWithCapacity:20]; //create an array with 20 items
    [toDoTextField becomeFirstResponder];//get the textbox to respond first with keyboard and cursor in place
    self.title = @"To Do's"; //title navCont for viewCont
    //edit button used with below method to remove rows
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style: UIBarButtonItemStyleBordered target:self action:@selector(addORDeleteRows)];[self.navigationItem setLeftBarButtonItem:addButton];

    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)addToDo:(id)sender {
    [toDoArray addObject:toDoTextField.text];
    [toDoTableView reloadData];
    [toDoTextField resignFirstResponder];
}

- (IBAction)removeToDo:(id)sender {
    [toDoArray removeLastObject];
    [toDoTableView reloadData];
    [toDoTextField resignFirstResponder];
    
}

#pragma mark UITableViewDataSource

-(int)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"my identifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"my identifier"];
    }
    cell.textLabel.text = [toDoArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
<<<<<<< HEAD

=======
    
>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705
    return cell;
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [toDoArray count];
}

#pragma mark UITableViewDelegate
<<<<<<< HEAD
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    row = indexPath.row;
    secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.view addSubview:secondViewController.view];
    secondViewController.delegate = self;
    secondViewController.textValue = [toDoArray objectAtIndex:row];
    
}
/*
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewController *secondViewController;
    secondViewController = [[SecondViewController alloc]initWithNibName:nil bundle:nil];
    secondViewController.textValue = [toDoArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:secondViewController animated:YES];
    

}*/
#pragma mark UpdateToDoDelegate
=======
//***************chevron button:accessoryButtonTappedForRowWithIndexPath 
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    row = indexPath.row;
    SecondViewController *secondViewController;
    secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    secondViewController.delegate = self;
    secondViewController.textValue = [toDoArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:secondViewController animated:YES];
}
//*************swipe delete
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath {
   

	row2 = [indexPath row];
	count = [toDoArray count];
    
	if (row2 < count) {
        [toDoArray removeObjectAtIndex:row];
        [toDoTableView reloadData];
	}
}
- (void)addORDeleteRows //<------------------used this method to delete rows
{
    if(self.editing)
    {
        [super setEditing:NO animated:NO];
        [toDoTableView setEditing:NO animated:NO];
        [toDoTableView reloadData];
        [self.navigationItem.leftBarButtonItem setTitle:@"Edit"];
        [self.navigationItem.leftBarButtonItem setStyle:UIBarButtonItemStylePlain];
    }
    else
    {
        [super setEditing:YES animated:YES];
        [toDoTableView setEditing:YES animated:YES];
        [toDoTableView reloadData];
        [self.navigationItem.leftBarButtonItem setTitle:@"Done"];
        [self.navigationItem.leftBarButtonItem setStyle:UIBarButtonItemStyleDone];
    }
}
#pragma mark UpdateToDoDelegate

>>>>>>> a8a094eaa3f208c8c0479e9c1a6b9af57746e705
-(void)updateToDoItem:(NSString *)item;
{
    [toDoArray replaceObjectAtIndex:row withObject:item];
    [toDoTableView reloadData];
}
@end