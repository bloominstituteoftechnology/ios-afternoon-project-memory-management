//
//  ContactsTableViewController.m
//  Contacts-MRC
//
//  Created by Hunter Oppel on 6/17/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactDetailViewController.h"
#import "Contact.h"

@interface ContactsTableViewController () <UITableViewDelegate, UITableViewDataSource, ContactDetailDelegate>

@property (retain, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad
{
    self.contacts = [[NSMutableArray<Contact *> alloc] init];
}

- (void)dealloc
{
    [_tableView release];
    [_contacts release];
    [super dealloc];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier  isEqual:@"ViewContactSegue"]) {
        ContactDetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        detailVC.contact = self.contacts[indexPath.row];
        detailVC.delegate = self;
    } else if ([segue.identifier isEqual:@"AddContactSegue"]) {
        ContactDetailViewController *detailVC = segue.destinationViewController;
        
        detailVC.delegate = self;
    }
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contacts.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
        
    cell.textLabel.text = self.contacts[indexPath.row].name;
    cell.detailTextLabel.text = self.contacts[indexPath.row].phoneNumber;
    
    return cell;
}

- (void)didChangeContactsWithContact:(Contact *)contact oldContact:(Contact *)oldContact
{
    if (oldContact) {
        NSInteger count = [self.contacts count];
        for (NSInteger index = (count - 1); index >= 0; index --) {
            if ([self.contacts[index] isEqual:oldContact]) {
                [self.contacts removeObjectAtIndex:index];
            }
        }
    }
    
    [self.contacts addObject:contact];
    
    [self.tableView reloadData];
}

@end
