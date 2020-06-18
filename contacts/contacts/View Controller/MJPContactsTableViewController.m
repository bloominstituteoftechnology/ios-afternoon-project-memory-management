//
//  MJPContactsTableViewController.m
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import "MJPContactsTableViewController.h"
#import "MJPContact.h"
#import "MJPContactController.h"
#import "MJPContactViewController.h"

@interface MJPContactsTableViewController ()

@property (nonatomic, readonly) MJPContactController *contactController;

@end

@implementation MJPContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //created an instance of the contact controller
    _contactController = [[MJPContactController alloc] init];

//    [_contactController addContact:[MJPContact contactWithName:@"Test Name" email:@"Test E-mail" phone:@"Test number"]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewDidAppear:true];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    MJPContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        MJPContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
        [self.contactController deleteContact:contact];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

 #pragma mark - Navigation

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
     if ([[segue identifier] isEqualToString:@"AddContactSegue"]) {
            MJPContactViewController *addVC = [segue destinationViewController];
            addVC.contactController = self.contactController;

     } else if ([[segue identifier] isEqualToString:@"DetailContactSegue"]) {
         MJPContactViewController *detailVC = [segue destinationViewController];
         NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
         detailVC.contactController = self.contactController;
         detailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
     }
 }

@end
