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

@property (nonatomic, retain) ContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[ContactController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
    [super viewWillAppear:true];
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
    [_contactController release];
    [super dealloc];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"ShowContactDetailSegue"]) {
        ContactDetailViewController *contactDetailVC = segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        contactDetailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
        contactDetailVC.isAddContact = NO;
        contactDetailVC.contactController = self.contactController;
    } else {
        ContactDetailViewController *contactDetailVC = segue.destinationViewController;
        contactDetailVC.isAddContact = YES;
        contactDetailVC.contactController = self.contactController;
    }
}


@end
