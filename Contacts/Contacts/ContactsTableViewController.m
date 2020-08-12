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

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController


NSArray <Contact *> *contacts;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Contact Cell" forIndexPath:indexPath];
    cell.textLabel.text = contacts[indexPath.row].fullName;
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"editContactSegue"])
    {
//        ContactDetailViewController *contactDetailVC = [segue destinationViewController];
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
    } else if ([[segue identifier] isEqualToString:@"addNewContactSegue"])
    {
//        ContactDetailViewController *contactDetailVC = [segue destinationViewController];
//        contactDetailVC.
//        contactDetailVC.
    }
}


@end
