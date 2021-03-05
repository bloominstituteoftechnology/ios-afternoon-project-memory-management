//
//  LSIContactsTableViewController.m
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import "LSIContactsTableViewController.h"
#import "LSIContactDetailViewController.h"

//MARK: - Interface -
@interface LSIContactsTableViewController ()

@end

//MARK: - Implementation -
@implementation LSIContactsTableViewController

/// Methods

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    @autoreleasepool {
        _contactController = [[LSIContactController alloc] init];
    }
    
}

/// Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    LSIContact *contact = _contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}

/// Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"NewContactSegue"]) {
        LSIContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.title = @"New Contact";
        detailVC.detailMode = false;
    }
    
    else if ([segue.identifier isEqual: @"ContactDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        LSIContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.detailMode = true;
        detailVC.possibleIndexPath = indexPath;
    }
    
}


@end
