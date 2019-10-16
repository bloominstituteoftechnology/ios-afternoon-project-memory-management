//
//  JSContactsTableVC.m
//  Contacts-C
//
//  Created by Jeffrey Santana on 10/16/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSContactsTableVC.h"
#import "JSContactController.h"
#import "JSContact.h"

@interface JSContactsTableVC ()

@property JSContactController *contactController;

@end

@implementation JSContactsTableVC

// MARK: - IBOutlets


// MARK: - Properties


// MARK: - Life Cycle

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.contactController = [[[JSContactController alloc] init] autorelease];
}

// MARK: - IBActions


// MARK: - Helpers


// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
	JSContact *contact = self.contactController.contacts[indexPath.row];
	
	cell.textLabel.text = contact.name;
	cell.detailTextLabel.text = contact.relationship;
    
    return cell;
}
@end
