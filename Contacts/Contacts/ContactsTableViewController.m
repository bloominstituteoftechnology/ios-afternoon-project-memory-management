//
//  ContactsTableViewController.m
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "ContactsTableViewController.h"

@interface ContactsTableViewController ()

//MARK: - Outlets

@end

@implementation ContactsTableViewController

//MARK: - Views

- (void)viewDidLoad {
    [super viewDidLoad];
}

//MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    return cell;
}

//MARK: - Methods

//MARK: - Actions

//MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
}

@end
