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

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Contact *moss = [[[Contact alloc] initWithName:@"Maurice Moss " email:@"maurice.moss@gmail.com" phone:@"011-8999"] autorelease];
    Contact *roy = [[[Contact alloc] initWithName:@"Roy Trenneman" email:@"roy.trenneman@gmail.com" phone:@"881-9991"] autorelease];
    Contact *jen = [[[Contact alloc] initWithName:@"Jen Barber" email:@"jen.barber@gmail.com" phone:@"197-253"] autorelease];
    self.contacts = [[[NSMutableArray alloc] initWithObjects:moss, roy, jen, nil] autorelease];
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = _contacts [indexPath.row].name;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        
    } else if ([segue.identifier isEqualToString:@"DetailSegue"]) {
        DetailViewController *detailVC = (DetailViewController *)segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contact *contact = _contacts[indexPath.row];
        detailVC.contact = contact;
    }
}

- (void)dealloc
{
    [super dealloc];
}


@end
