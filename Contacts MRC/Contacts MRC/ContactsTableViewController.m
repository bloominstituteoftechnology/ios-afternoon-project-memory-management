//
//  ContactsTableViewController.m
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "Contact.h"
#import "DetailViewController.h"
#import "ContactController.h"

@interface ContactsTableViewController ()

@property (nonatomic) ContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[ContactController alloc] init];
    Contact *moss = [[[Contact alloc] initWithName:@"Maurice Moss " email:@"maurice.moss@gmail.com" phone:@"011-8999"] autorelease];
    Contact *roy = [[[Contact alloc] initWithName:@"Roy Trenneman" email:@"roy.trenneman@gmail.com" phone:@"881-9991"] autorelease];
    Contact *jen = [[[Contact alloc] initWithName:@"Jen Barber" email:@"jen.barber@gmail.com" phone:@"197-253"] autorelease];
    [self.contactController addContact:moss];
    [self.contactController addContact:roy];
    [self.contactController addContact:jen];
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        DetailViewController *addDetailVC = (DetailViewController *)segue.destinationViewController;
        addDetailVC.contactController = self.contactController;
    } else if ([segue.identifier isEqualToString:@"DetailSegue"]) {
        DetailViewController *detailVC = (DetailViewController *)segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contact *contact = self.contactController.contacts[indexPath.row];
        detailVC.contact = contact;
    }
}

- (void)dealloc
{
    [super dealloc];
}


@end
