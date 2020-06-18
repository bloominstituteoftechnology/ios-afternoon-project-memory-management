//
//  ContactTableViewController.m
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import "ContactTableViewController.h"
#import "BRDContactController.h"
#import "BRDContact.h"
#import "ContactDetailViewController.h"

@interface ContactTableViewController ()

@property (nonatomic) BRDContactController *contactController;

@end

@implementation ContactTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    cell.detailTextLabel.text = self.contactController.contacts[indexPath.row].emailAddress;
    
    return cell;
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"ShowSegue"]){
        
        NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
        ContactDetailViewController *controller = (ContactDetailViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
        controller.contact = self.contactController.contacts[selectedIndexPath.row];
        
    } else if ([segue.identifier isEqualToString:@"AddSegue"]) {
        
        ContactDetailViewController *controller = (ContactDetailViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
        
    }
}

- (BRDContactController *)contactController {
    if (!_contactController) {
        _contactController = [[BRDContactController alloc] init];
    }
    return _contactController;
}

@end
