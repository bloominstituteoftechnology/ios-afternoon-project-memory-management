//
//  ContactsTableViewController.m
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "WAHContactController.h"
#import "WAHContact.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic) WAHContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WAHContact *testing = [[[WAHContact alloc] initWithName:@"Wyatt"
                                               emailAddress:@"wyatt@example.com"
                                                phoneNumber:@"850-867-5309"] autorelease];
    WAHContact *testing2 = [[[WAHContact alloc] initWithName:@"Example"
                                               emailAddress:@"example@example.com"
                                                phoneNumber:@"345-231-4534"] autorelease];

    [self.contactController addContact:testing];
    [self.contactController addContact:testing2];
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
    if([segue.identifier isEqualToString:@"ShowContactDetailSegue"]){
        NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
        ContactDetailViewController *controller = (ContactDetailViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
        controller.contact = self.contactController.contacts[selectedIndexPath.row];
    } else if ([segue.identifier isEqualToString:@"ShowAddContactSegue"]) {
        ContactDetailViewController *controller = (ContactDetailViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
    }
}

- (WAHContactController *)contactController {
    if (!_contactController) {
        _contactController = [[WAHContactController alloc] init];
    }
    return _contactController;
}

@end
