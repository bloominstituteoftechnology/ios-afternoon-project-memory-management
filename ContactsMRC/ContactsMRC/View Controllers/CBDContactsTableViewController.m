//
//  CBDContactsTableViewController.m
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDContactsTableViewController.h"
#import "CBDContact.h"
#import "CBDContactController.h"

@interface CBDContactsTableViewController ()
@property CBDContactController *contactController;

@end

@implementation CBDContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CBDContact *christopher = [[CBDContact alloc] initWithName:@"Christopher" email:@"christopher.devito@protonmail.com" phone:@"123-456-7890"];
    CBDContact *mom = [[CBDContact alloc] initWithName:@"Mom" email:@"mom@mom.com" phone:@"098-765-4321"];

    _contactController = [[CBDContactController alloc] init];
    [self.contactController.contacts addObject:christopher];
    [self.contactController.contacts addObject:mom];
    [christopher release];
    christopher = nil;
    [mom release];
    mom = nil;
    [self.tableView reloadData];
}

- (IBAction)addContact:(id)sender {
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    CBDContact *contact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phone;
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//}
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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
