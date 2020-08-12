//
//  ContactsTableViewController.m
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactDetailViewController.h"
#import "Contact.h"
#import "ContactController.h"

@interface ContactsTableViewController ()

@property ContactController *contactsController;
@end

@implementation ContactsTableViewController


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:true];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contactsController = [[[ContactController alloc] init] autorelease];
    
    // Create contacts to test table
    Contact *me = [[Contact alloc] initWithFullName:@"Claudia Maciel" emailAddress:@"clc_80@yahoo.com" phoneNumber:@"831-123-5698"];
    Contact *husband = [[Contact alloc] initWithFullName:@"Eddie Maciel" emailAddress:@"macieleddie@yahoo.com" phoneNumber:@"209-987-6541"];
    
    [self.contactsController addContact:me];
    [self.contactsController addContact:husband];
    
    [me release];
    [husband release];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactsController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Contact Cell" forIndexPath:indexPath];
    Contact *contact = [self.contactsController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.fullName;
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"editContactSegue"])
    {
        ContactDetailViewController *contactDetailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contact *contact = [self.contactsController.contacts objectAtIndex:indexPath.row];
        contactDetailVC.contact = contact;
        
    } else if ([[segue identifier] isEqualToString:@"addNewContactSegue"])
    {
        ContactDetailViewController *contactDetailVC = [segue destinationViewController];
        contactDetailVC.contactsController = self.contactsController;
    }
}

- (void)dealloc
{
    [super dealloc];
}


@end
