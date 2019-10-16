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

@property (retain) JSContactController *contactController;

@end

@implementation JSContactsTableVC

// MARK: - IBOutlets


// MARK: - Properties


// MARK: - Life Cycle

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.contactController = [[[JSContactController alloc] init] autorelease];
}

- (void)dealloc {
	[_contactController release];
	[super dealloc];
}

// MARK: - IBActions


// MARK: - Helpers


// MARK: - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
	JSContact *contact = self.contactController.contacts[indexPath.row];
	
	cell.textLabel.text = contact.name;
	cell.detailTextLabel.text = contact.relationship;
    
    return cell;
}
@end
