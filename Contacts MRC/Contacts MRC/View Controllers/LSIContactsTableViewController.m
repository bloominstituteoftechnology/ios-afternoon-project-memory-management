//
//  LSIContactsTableViewController.m
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import "LSIContactsTableViewController.h"
#import "LSIContactController.h"
#import "LSIContact.h"
#import "LSIContactDetailViewController.h"

@interface LSIContactsTableViewController ()

@property (nonatomic, retain) LSIContactController *controller;

@end

@implementation LSIContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _controller = [[LSIContactController alloc] init];
    NSLog(@"Contacts: %@", self.controller.contacts);
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.controller contacts] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    LSIContact *contact = self.controller.contacts[indexPath.row];
    [[cell textLabel] setText:[contact name]];
    
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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LSIContactDetailViewController *detailVC = segue.destinationViewController;
    if ([detailVC isKindOfClass:[LSIContactDetailViewController class]]) {
        NSLog(@"%@", self.controller.contacts);
        [detailVC setController:self.controller];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        if (indexPath) {
            LSIContact *contact = self.controller.contacts[indexPath.row];
            [detailVC setContact:contact];
        }
    }
}

- (void)dealloc {
    [_controller release];
    _controller = nil;
    
    [super dealloc];
}

@end
