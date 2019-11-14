//
//  BYContactsTableViewController.m
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYContactsTableViewController.h"
#import "BYContactDetailViewController.h"
#import "BYContactController.h"
#import "BYContact.h"

@interface BYContactsTableViewController ()

@property BYContactController *controller;

@end

@implementation BYContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        _controller = [[[[BYContactController alloc] init] retain] autorelease];
    }
    return self;
}

- (void)viewDidLoad {
    [self createNewData];
    
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
    
    [super viewDidAppear:animated];
}

- (void)createNewData {
//    BYContact *contact1 = [[[BYContact alloc] initWithName:@"test1" phoneNumber:@"123456788" email:@"test1@gmail.com"] autorelease];
//    BYContact *contact2 = [[[BYContact alloc] initWithName:@"test2" phoneNumber:@"123456789" email:@"test2@gmail.com"] autorelease];
    
    [self.controller addContactWithName:@"test1" phoneNumber:@"123456788" email:@"test1@gmail.com"];
    [self.controller addContactWithName:@"test2" phoneNumber:@"123456789" email:@"test2@gmail.com"];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.controller.contacts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[[tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath] retain] autorelease];
    
    BYContact *contact = [[self.controller.contacts[indexPath.row] retain] autorelease];
    cell.textLabel.text = contact.name;
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual: @"AddContactShowSegue"]) {
        BYContactDetailViewController *detailVC = [[segue.destinationViewController retain] autorelease];
        detailVC.controller = self.controller;
    } else if ([segue.identifier isEqualToString:@"ContactDetailShowSegue"]) {
        BYContactDetailViewController *detailVC = [[segue.destinationViewController retain] autorelease];
        NSIndexPath *indexPath = [[[self.tableView indexPathForSelectedRow] retain] autorelease];
        BYContact *contact = [[self.controller.contacts[indexPath.row] retain] autorelease];
        detailVC.contact = contact;
        detailVC.controller = self.controller;
    }
}


@end
