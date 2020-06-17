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

NSArray<HSIContact *> *contacts;

- (void)viewDidLoad {
    [super viewDidLoad];
}

// MARK: - Table view data source -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return contacts.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    HSIDetailViewController *detailViewController = [[HSIDetailViewController alloc] init];
    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        // FUTURE: create controller and pass
    } else {
        NSIndexPath *selectedindexPath = [self.tableView indexPathForSelectedRow];
        detailViewController.contact = contacts[selectedindexPath.row];
    }
    [detailViewController release];
}
@end
