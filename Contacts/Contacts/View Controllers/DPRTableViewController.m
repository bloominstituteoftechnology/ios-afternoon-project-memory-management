//
//  DPRTableViewController.m
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DPRTableViewController.h"
#import "DPRViewController.h"

@interface DPRTableViewController ()

@end

@implementation DPRTableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _controller = [[DPRContactController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controller.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.controller.contacts[indexPath.row] name];
    cell.detailTextLabel.text = [self.controller.contacts[indexPath.row] email];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddSegue"]) {
        DPRViewController *addVC = (DPRViewController *)segue.destinationViewController;
        addVC.controller = self.controller;
    } else if ([segue.identifier isEqualToString:@"DetailSegue"]) {
        DPRViewController *detailVC = (DPRViewController *)segue.destinationViewController;
        detailVC.controller = self.controller;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        detailVC.contact = [self.controller.contacts objectAtIndex:indexPath.row];
    }
}

@end
