//
//  ContactsTableViewController.m
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "HLOContact.h"
#import "HLOContactController.h"
#import "DetailViewViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic) HLOContactController *contactController;

@end

@implementation ContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[HLOContactController alloc] init]; // contactController +1
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    // contactWith initializer returns an autorelease object so its only reference count should be the one created by adding it to the array.
    [self.contactController.contacts addObject:[HLOContact contactWithName:@"Hector Ledesma" email:@"hectoremil21@hotmail.com" phoneNumber:@"123-456-7890"]];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];

    HLOContact *contact = self.contactController.contacts[indexPath.row];

    cell.textLabel.text = contact.name;
//    cell.textLabel.text = @"Test";
    
    // Configure the cell...
    
    return cell;
}
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewViewController *destination = segue.destinationViewController;

    if ([segue.identifier isEqualToString:@"AddContactShowSegue"]){

    } else if ([segue.identifier isEqualToString:@"ViewContactShowSegue"]){

    }

}

@end
