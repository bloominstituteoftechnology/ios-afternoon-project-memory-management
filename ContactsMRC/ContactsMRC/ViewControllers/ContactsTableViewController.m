//
//  ContactsTableViewController.m
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "MBMContact.h"
#import "MBMContactController.h"
#import "ContactsDetailViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic, retain) MBMContactController *contactController;


@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[MBMContactController alloc] init];
    
    MBMContact *jorge = [[MBMContact alloc] initWithName:@"Jorge" email:@"notatroll@trolling4lols.com" phone:@"+1 (702) 885-2978" picture:[UIImage imageNamed:@"Jorge"]];
    
    [self.contactController.contacts addObject:jorge];
    [jorge release];
}

- (IBAction)addContactTapped:(id)sender {
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    MBMContact *contact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.email;
    cell.imageView.image = contact.picture;
    
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

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)dealloc {
    [_contactController release];
    [super dealloc];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        ContactsDetailViewController *addContact = (ContactsDetailViewController *)segue.destinationViewController;
        addContact.contactController = _contactController;
    } else if ([segue.identifier isEqualToString:@"EditContactSegue"]) {
        ContactsDetailViewController *editContact = (ContactsDetailViewController *)segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MBMContact *contact = self.contactController.contacts[indexPath.row];
        editContact.contact = contact;
        editContact.contactController = _contactController;
    }
}


@end
