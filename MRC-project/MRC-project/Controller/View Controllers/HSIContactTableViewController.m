//
//  HSIContactTableViewController.m
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import "HSIContactTableViewController.h"
#import "HSIDetailViewController.h"
#import "HSIContact.h"

@interface HSIContactTableViewController ()

@end

@implementation HSIContactTableViewController
//FUTURE: Use a controller
NSMutableArray<HSIContact *> *contacts;

- (void)viewDidLoad {
    [super viewDidLoad];
    HSIContact *kenny = [[HSIContact alloc] initWithName:@"Kenny" emailAddress:@"kennydubroff@hotmail.com" phoneNumber:@"9258497823"];
    HSIContact *bella = [[HSIContact alloc] initWithName:@"Isabella" emailAddress:@"bella@hotmail.com" phoneNumber:@"9257051709"];
    contacts = [[NSMutableArray alloc] initWithObjects:kenny, bella, nil];
    [kenny release];
    [bella release];
}

// MARK: - Table view data source -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return contacts.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    cell.textLabel.text = contacts[indexPath.row].name;
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    HSIDetailViewController *detailViewController = (HSIDetailViewController *)segue.destinationViewController;
    detailViewController.delegate = self;

    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        // FUTURE: create controller and pass
    } else {
        NSIndexPath *selectedindexPath = [self.tableView indexPathForSelectedRow];
        HSIContact *contact = contacts[selectedindexPath.row];
        detailViewController.contact = contact;
    }
}
@end
