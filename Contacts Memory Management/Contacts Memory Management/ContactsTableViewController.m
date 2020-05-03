//
//  ContactsTableViewController.m
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "Contact.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController () <ContactDelegate>

@end

@implementation ContactsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath];
    Contact *contact = self.contacts[indexPath.row];
    NSString *contactName = [[NSString alloc] initWithFormat:@"%@", contact.name];
    
    cell.textLabel.text = contactName;
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddNewContactSegue"]) {
        ContactDetailViewController *addContactVC = [segue destinationViewController];
        addContactVC.delegate = self;
        
    } else if ([segue.identifier isEqualToString:@"ShowContactDetailSegue"]) {
        ContactDetailViewController *contactDetailVC = [segue destinationViewController];
        contactDetailVC.delegate = self;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contact *contact = self.contacts[indexPath.row];
        if (!contact) {
            return;
        } else {
            contactDetailVC.contact = contact;
        }
    }
}

#pragma mark - IBActions

- (IBAction)addButtonTapped:(id)sender
{
    [self performSegueWithIdentifier:@"AddNewContactSegue" sender:self];
}

#pragma mark - Delegate Methods

- (void)newContactAdded:(nonnull Contact *)contact
{
    // Add new contact to local contact array
}

@end
