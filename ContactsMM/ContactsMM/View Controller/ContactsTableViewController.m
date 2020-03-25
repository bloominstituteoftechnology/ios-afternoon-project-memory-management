//
//  ContactsTableViewController.m
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import "ContactsTableViewController.h"

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController

// MARK: - Properties

- (void)viewDidLoad {
    [super viewDidLoad];
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        
    return cell;
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Add
    if ([segue.identifier isEqual: @"AddContactSegue"]) {
        NSLog(@"AddContactSegue");
    }
    
    // View/Edit
    if ([segue.identifier isEqual: @"EditContactSegue"]) {
        NSLog(@"EditContactSegue");
    }
}

@end
