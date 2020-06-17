//
//  LSIContactTableViewController.m
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIContactTableViewController.h"
#import "LSIContact.h"
#import "LSIContactsViewController.h"
#import "LSIContactController.h"

@interface LSIContactTableViewController ()

@property (nonatomic) LSIContactController *contactController;

@end

@implementation LSIContactTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    LSIContact *contact1 = [[[LSIContact alloc] initWithName:@"Bharat" emailAddress:@"Bharatiosdeveloper@gmail.com" telephone:@"6197884323"] autorelease];
    LSIContact *contact2 = [[[LSIContact alloc] initWithName:@"Rick" emailAddress:@"bhawnish@gmail.com" telephone:@"6197884323"] autorelease];
    
    [self.contactController addContacts:contact1];
     [self.contactController addContacts:contact2];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
  
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    cell.detailTextLabel.text = self.contactController.contacts[indexPath.row].emailAddress;
    // Configure the cell...
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showContactSegue"]) {
        NSIndexPath *indexSelected = [self.tableView indexPathForSelectedRow];
        LSIContactsViewController *controller = (LSIContactsViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
        controller.contact = self.contactController.contacts[indexSelected.row];
    } else if ([segue.identifier isEqualToString:@"createContactSegue"]) {
        LSIContactsViewController *controller = (LSIContactsViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (LSIContactController *)contactController {
    if (!_contactController) {
          _contactController = [[LSIContactController alloc] init];
      }
      return _contactController;
}

@end
