//
//  MTGTableViewController.m
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import "MTGTableViewController.h"
#import "MTGViewController.h"
#import "Contact.h"

@interface MTGTableViewController ()

@end

@implementation MTGTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[MTGContactController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger count = _contactController.contacts.count;
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = _contactController.contacts[indexPath.row].name;
    cell.detailTextLabel.text = _contactController.contacts[indexPath.row].email;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {

        [_contactController delete:(indexPath.row)];
        
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.destinationViewController isKindOfClass:[MTGViewController class]]) {
        MTGViewController *viewVC = segue.destinationViewController;

        if ([segue.identifier caseInsensitiveCompare:@"EditSegue"] == NSOrderedSame) {

            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            if (indexPath) {
                viewVC.contact = _contactController.contacts[indexPath.row];
            }
        }
    }
}

@end
