//
//  ContactsTableVC.m
//  Contacts-C
//
//  Created by Jeffrey Santana on 10/16/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "ContactsTableVC.h"

@interface ContactsTableVC ()

@end

@implementation ContactsTableVC

// MARK: - Create


// MARK: - Read


// MARK: - Update


// MARK: - Delete


// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return <#Count#>;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
@end
