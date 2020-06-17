//
//  ContactsTableViewController.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "CDGContactController.h"
#import "CDGContact.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic) CDGContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contactController = [[[CDGContactController alloc]init]autorelease];
    [self testData];
    [self.tableView reloadData];
}

- (void)testData {
    [self.contactController createContactWithName:@"Chris Gonzales"
                                            phone:@"123-456-7890"
                                            email:@"me@me.com"];
    [self.contactController createContactWithName:@"Test 2"
                                            phone:@"098-765-4321"
                                            email:@"2@2.com"];
    [self.contactController createContactWithName:@"Test 3"
                                            phone:@"123-098-4756"
                                            email:@"3@3.com"];
    [self.contactController createContactWithName:@"Test 4"
                                            phone:@"019-283-4756"
                                            email:@"4@4.com"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    CDGContact *contact = _contactController.contacts[indexPath.row];
    
    cell.textLabel.text = contact.name;
    return cell;
}
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddContactSegue"]){
        ContactDetailViewController *detailVC = (ContactDetailViewController *)segue.destinationViewController;
        detailVC.contactController = _contactController;
    } else if ([segue.identifier isEqualToString:@"ContactDetailSegue"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        CDGContact *contact = _contactController.contacts[indexPath.row];
        ContactDetailViewController *detailVC = (ContactDetailViewController *)segue.destinationViewController;
        detailVC.contactController = _contactController;
        detailVC.contact = contact;
        
    }
}

@end
