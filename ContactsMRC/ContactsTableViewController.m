//
//  ContactsTableViewController.m
//  ContactsMRC
//
//  Created by Chad Parker on 8/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactsController.h"
#import "Contact.h"
#import "CreateOrEditViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic, retain) ContactsController *contactsController;

@end

@implementation ContactsTableViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.contactsController = [[[ContactsController alloc] init] autorelease];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [self.tableView reloadData];
}

- (void)dealloc
{
    [_contactsController release];
    [super dealloc];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contactsController.contactCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    Contact *contact = [self.contactsController contactAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CreateOrEditViewController *createOrEditVC = segue.destinationViewController;
    createOrEditVC.contactsController = self.contactsController;

    if ([segue.identifier isEqualToString:@"EditContactSegue"])
    {

    }
}

@end
