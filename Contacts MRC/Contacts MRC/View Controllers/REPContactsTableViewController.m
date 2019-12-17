//
//  REPContactsTableViewController.m
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPContactsTableViewController.h"
#import "REPContactController.h"
#import "REPContact.h"
#import "REPContactDetailViewController.h"

@interface REPContactsTableViewController ()

@property (retain, nonatomic) IBOutlet UIBarButtonItem *plusButton;
@property (retain, nonatomic) REPContactController *contactController;

@end

@implementation REPContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.contactController = [REPContactController controller];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.tableView reloadData];
}

- (void)dealloc {
	[_plusButton release];
	[_contactController release];
	[super dealloc];
}

- (IBAction)plusButtonPressed:(UIBarButtonItem *)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"ShowContactSegue"]) {
		REPContactDetailViewController *detailVC = segue.destinationViewController;
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

		REPContact *contact = self.contactController.contacts[indexPath.row];
		detailVC.contactController = self.contactController;
		detailVC.contact = contact;
	}

	if ([segue.identifier isEqualToString:@"CreateContactSegue"]) {
		REPContactDetailViewController *detailVC = segue.destinationViewController;
		detailVC.contactController = self.contactController;
	}
}

// MARK: - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSArray *contacts = self.contactController.contacts;
    return contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];

    // Configure the cell...
	REPContact *contact = self.contactController.contacts[indexPath.row];
	cell.textLabel.text = contact.name;

    return cell;
}

@end
