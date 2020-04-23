//
//  ContactTableViewController.m
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import "ContactTableViewController.h"
#import "ContactController.h"
#import "Contact.h"
#import "DetailViewController.h"

@interface ContactTableViewController ()

@property (nonatomic,copy)ContactController *contactController;
@end

@implementation ContactTableViewController


- (ContactController *)contactController {
    if (!_contactController) {
        _contactController = [[ContactController alloc] init];
    }
    return _contactController;
}
- (void)dealloc {
    [_contactController release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}
#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    Contact *contact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.email;
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"CellSegue"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *selectedIndex = [self.tableView indexPathForSelectedRow];
        Contact *contact = self.contactController.contacts[selectedIndex.row];
        detailVC.contact = contact;
        
    } else if ([segue.identifier isEqualToString:@"AddSegue"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
        
    }
}


@end
