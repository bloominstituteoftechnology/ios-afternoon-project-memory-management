//
//  CDBContactTableViewController.m
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBContactTableViewController.h"
#import "CDBContact.h"
#import "CDBContactController.h"
#import "CDBContactDetailViewController.h"

@interface CDBContactTableViewController ()

@property (nonatomic, retain) CDBContactController *contactController;

@end

@implementation CDBContactTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) { // buy the land] make it] own it] give it back]
        _contactController = [[[[CDBContactController alloc] init] retain] autorelease];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTestData];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)createTestData {
    [self.contactController addContactWithName:@"Allison" withEmail:@"allison@example.com" withPhoneNumber:@"123-456-7890"];
    [self.contactController addContactWithName:@"Kayla" withEmail:@"kaylaHern@example.com" withPhoneNumber:@"123-456-7899"];
    [self.contactController addContactWithName:@"Karis" withEmail:@"bubbles@example.com" withPhoneNumber:@"123-456-7898"];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.contactController.contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[[tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath] retain] autorelease];
    
    CDBContact *contact = [[self.contactController.contacts[indexPath.row] retain] autorelease];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phoneNumber;
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual: @"ShowAddNewContactSegue"]) {
        CDBContactDetailViewController *detailVC = [[segue.destinationViewController retain] autorelease];
        detailVC.contactController = self.contactController;
    } else if ([segue.identifier isEqualToString:@"ShowDetailFromCellSegue"]) {
        CDBContactDetailViewController *detailVC = [[segue.destinationViewController retain] autorelease];
        NSIndexPath *indexPath = [[[self.tableView indexPathForSelectedRow] retain] autorelease];
        CDBContact *contact = [[self.contactController.contacts[indexPath.row] retain] autorelease];
        detailVC.contact = contact;
        detailVC.contactController = self.contactController;
    }
}

- (void)dealloc {
    [_contactController release];
    [super dealloc];
}

@end
