//
//  ContactsTableViewController.m
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "Contact.h"
#import "ContactsController.h"

@interface ContactsTableViewController ()

@property (nonatomic, readonly) ContactsController *contactsController;

@end

@implementation ContactsTableViewController

//MARK: - Views

- (void)viewDidLoad {
    [super viewDidLoad];
    _contactsController = [[ContactsController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    [self.tableView reloadData];
}

//MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contactsController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    Contact *contact = [_contactsController.contacts objectAtIndex:indexPath.row];
    
    cell.textLabel.text = contact.name;
    
    return cell;
}

//MARK: - Methods

//MARK: - Actions

//MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
}

@end
