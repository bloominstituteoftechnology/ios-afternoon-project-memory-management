//
//  PNCContactsTableViewController.m
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCContactsTableViewController.h"
#import "PNCContactDetailViewController.h"
#import "PNCContactController.h"
#import "PNCContact.h"

@interface PNCContactsTableViewController ()

@property PNCContactController *controller;

@end

@implementation PNCContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
	if (self = [super initWithCoder:coder]) {
		_controller = [[[[PNCContactController alloc] init] retain] autorelease];
	}
	return self;
}

- (void)viewDidLoad {
	[self createNewData];

	[super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
	[self.tableView reloadData];

	//[super viewDidAppear:animated];
	[super viewDidAppear:animated];
}

- (void)createNewData {
	//    PNCContact *contact1 = [[[PNCContact alloc] initWithName:@"test1" phoneNumber:@"123456788" email:@"test1@gmail.com"] autorelease];
	//    PNCContact *contact2 = [[[PNCContact alloc] initWithName:@"test2" phoneNumber:@"123456789" email:@"test2@gmail.com"] autorelease];

	[self.controller addContactWithName:@"test1" phoneNumber:@"123456788" email:@"test1@gmail.com"];
	[self.controller addContactWithName:@"test2" phoneNumber:@"123456789" email:@"test2@gmail.com"];
	[self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

	return [self.controller.contacts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [[[tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath] retain] autorelease];

	PNCContact *contact = [[self.controller.contacts[indexPath.row] retain] autorelease];
	cell.textLabel.text = contact.name;

	return cell;
}


#pragma mark - Navigation

//In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier  isEqual: @"AddContactShowSegue"]) {
		PNCContactDetailViewController *detailVC = [[segue.destinationViewController retain] autorelease];
			detailVC.controller = self.controller;
		} else if ([segue.identifier isEqualToString:@"ShowContactDetailSegue"]) {
			PNCContactDetailViewController *detailVC = [[segue.destinationViewController retain] autorelease];
			NSIndexPath *indexPath = [[[self.tableView indexPathForSelectedRow] retain] autorelease];
			PNCContact *contact = [[self.controller.contacts[indexPath.row] retain] autorelease];
			detailVC.contact = contact;
			detailVC.controller = self.controller;
	}
}
@end
