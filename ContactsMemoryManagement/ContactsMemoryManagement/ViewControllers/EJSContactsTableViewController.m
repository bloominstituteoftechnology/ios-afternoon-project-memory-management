//
//  EJSContactsTableViewController.m
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "EJSContactsTableViewController.h"
#import "EJSContact.h"
#import "EJSContactsViewController.h"
#import "EJSContactController.h"

@interface EJSContactsTableViewController ()

@property (nonatomic) EJSContactController *contactController;

@end

@implementation EJSContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EJSContact *contact1 = [[[EJSContact alloc] initWithName:@"Enzo" emailAddress:@"Enzo@gmail.com" telephone:@"123456789"] autorelease];
      EJSContact *contact2 = [[[EJSContact alloc] initWithName:@"Jimenez" emailAddress:@"jimenez@gmail.com" telephone:@"123456789"] autorelease];
      
      [self.contactController addContacts:contact1];
       [self.contactController addContacts:contact2];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
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
    
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    cell.detailTextLabel.text = self.contactController.contacts[indexPath.row].emailAddress;

    
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showContactSegue"]) {
        NSIndexPath *indexSelected = [self.tableView indexPathForSelectedRow];
        EJSContactsViewController *controller = (EJSContactsViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
        controller.contact = self.contactController.contacts[indexSelected.row];
    } else if ([segue.identifier isEqualToString:@"createContactSegue"]) {
        EJSContactsViewController *controller = (EJSContactsViewController *)segue.destinationViewController;
        controller.contactController = self.contactController;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (EJSContactController *)contactController {
    if (!_contactController) {
          _contactController = [[EJSContactController alloc] init];
      }
      return _contactController;
}

@end
