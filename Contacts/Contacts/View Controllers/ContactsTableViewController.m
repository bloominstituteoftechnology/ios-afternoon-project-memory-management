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

@interface ContactsTableViewController ()

@property (nonatomic) WAHContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WAHContact *testing = [[[WAHContact alloc] initWithName:@"Wyatt"
                                               emailAddress:@"wyatt@example.com"
                                                phoneNumber:@"850-867-5309"] autorelease];

    
    [self.contactController addContact:testing];
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

- (WAHContactController *)contactController {
    if (!_contactController) {
        _contactController = [[WAHContactController alloc] init];
    }
    return _contactController;
}

@end
