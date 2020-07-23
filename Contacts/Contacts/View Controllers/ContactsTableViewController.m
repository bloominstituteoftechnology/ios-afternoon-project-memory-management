//
//  ContactsTableViewController.m
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "CAMContactController.h"
#import "CAMContact.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    _controller = [CAMContactController new];
    [_controller retain];
    
}

//MARK: - Table view data source -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.controller.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"ContactCell"
                                                            forIndexPath:indexPath];
    CAMContact *contact = self.controller.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
}




// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.controller removeContact: self.controller.contacts[indexPath.row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


//MARK: - Navigation -
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        ContactDetailViewController *addVC = [segue destinationViewController];
        [addVC retain];
        addVC.controller = self.controller;
        [addVC.controller retain];
        [addVC release];
    } else if ([segue.identifier isEqualToString:@"ContactDetailSegue"]) {
        ContactDetailViewController *detailVC = [segue destinationViewController];
        [detailVC retain];
        detailVC.controller = self.controller;
        detailVC.contact = self.controller.contacts[indexPath.row];
        [detailVC release];
    }
}

//MARK: - Memory Management -
-(void)dealloc
{
    [_controller release];
    _controller = nil;
    [super dealloc];
}


@end
