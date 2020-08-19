//
//  ContactsTableViewController.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "LSIContactController.h"
#import "LSIContact.h"
#import "CreateEditContactViewController.h"

@interface ContactsTableViewController ()
@property (nonatomic) LSIContactController *controller;
@property LSIContact *contact;
//@property (weak, nonatomic)NSMutableArray *savedContacts;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSArray *newContacts = [self.controller fetchSavedContacts];
//    self.savedContacts = [[NSMutableArray alloc] initWithArray: newContacts]
    
    [self.tableView reloadData];
}
- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
    [super viewWillAppear:animated];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.controller.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactTableViewCell" forIndexPath:indexPath];
    
    LSIContact *contact = [self.controller.contacts objectAtIndex:indexPath.row];
    self.contact = contact;
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phonenumber;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"addNewContactSegue"]) {
        CreateEditContactViewController *destinationVc = (CreateEditContactViewController *)segue.destinationViewController;
        destinationVc.controller = self.controller;
        
    } else {
        CreateEditContactViewController *destinationVc = (CreateEditContactViewController *)segue.destinationViewController;
        destinationVc.contact = self.contact;
    }
}

- (LSIContactController *)controller {
    if (!_controller) {
        _controller = [[LSIContactController alloc] init];
    }
    return _controller;
}

- (void)dealloc
{
    [super dealloc];
}


@end
