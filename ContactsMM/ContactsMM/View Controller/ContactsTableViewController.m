//
//  ContactsTableViewController.m
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactController.h"
#import "Contact.h"
#import "DetailViewController.h"

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController

// MARK: - Properties

- (ContactController *)contactController {
    
    if (!_contactController) {
        _contactController = [[ContactController alloc] init];
    }
    return _contactController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.contactController contacts] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        
    Contact *contact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Add
    if ([segue.identifier isEqual: @"AddContactSegue"]) {
        NSLog(@"AddContactSegue");
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
    }
    
    // View/Edit
    if ([segue.identifier isEqual: @"EditContactSegue"]) {
        NSLog(@"EditContactSegue");
        
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        detailVC.contact = self.contactController.contacts[indexPath.row];
    }
}

@end
