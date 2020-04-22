//
//  SAHContactListTableViewController.m
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import "SAHContactListTableViewController.h"
#import "SAHContactController.h"
#import "SAHContact.h"
#import "SAHContactDetailViewController.h"

@interface SAHContactListTableViewController ()

@property (nonatomic, copy) SAHContactController *contactController;

@end

@implementation SAHContactListTableViewController

- (SAHContactController *)contactController {
    if (!_contactController) {
        _contactController = [[SAHContactController alloc] init];
    }
    
    return _contactController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    SAHContact *contact = self.contactController.contacts[indexPath.item];
    
    cell.textLabel.text = contact.name;
    
    return cell;
}

- (void)dealloc {
    [_contactController release];
    [super dealloc];
}

- (IBAction)addTapped:(id)sender {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"EditContactDetailShowSegue"]) {
        SAHContactDetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *selectedIndex = [self.tableView indexPathForSelectedRow];
        SAHContact *contact = self.contactController.contacts[selectedIndex.row];
        detailVC.contact = contact;
        
    } else if ([segue.identifier isEqualToString:@"AddContactShowSegue"]) {
        SAHContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
        
    }
}

@end
