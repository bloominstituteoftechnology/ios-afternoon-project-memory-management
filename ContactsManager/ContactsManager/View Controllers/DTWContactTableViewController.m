//
//  DTWContactTableViewController.m
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import "DTWContactTableViewController.h"
#import "DTWContactController.h"
#import "DTWContact.h"
#import "DTWContactDetailViewController.h"

@interface DTWContactTableViewController ()

@end

@implementation DTWContactTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contactCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
        
    DTWContact *contact = [self.contactController contactAtIndex:indexPath.row];
    
    [cell.textLabel setText:contact.name];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowContactDetailSegue"]) {
        DTWContactDetailViewController *contactDetailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DTWContact *contact = [self.contactController contactAtIndex:indexPath.row];
        contactDetailVC.contact = contact;
        contactDetailVC.title = contact.name;
        
    } //else if ([[segue identifier] isEqualToString:@"ShowAddContactSegue"]) {
//        DTWContactDetailViewController *contactDetailVC = [segue destinationViewController];
//
//    }
}

@end
