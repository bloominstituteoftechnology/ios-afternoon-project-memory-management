//
//  ContactsTableViewController.m
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactController.h"
#import "Contact.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController ()

@property ContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contactController = [[ContactController alloc] init];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    Contact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.contactName;
    
    return cell;
}

- (void)dealloc
{
    [self.contactController release];
    [super dealloc];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"ShowContactDetailSegue"]) {
        ContactDetailViewController *contactDetailVC = segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        contactDetailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    }
}


@end
