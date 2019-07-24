//
//  TXCContactsTableViewController.m
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCContactsTableViewController.h"
#import "TXCContactsController.h"
#import "TXCContact.h"
#import "TXCContactDetailViewController.h"

@interface TXCContactsTableViewController ()

@end

@implementation TXCContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _contactsController = [[TXCContactsController alloc] init];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactsController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    TXCContact *contact = self.contactsController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"CellSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        TXCContact *contact = self.contactsController.contacts[indexPath.row];
        TXCContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.contact = contact;
        detailVC.contactsController = self.contactsController;
    } else if ([segue.identifier isEqualToString:@"AddSegue"]) {
        TXCContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactsController = self.contactsController;
    }
    
}


@end
