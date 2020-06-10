//
//  SBAContactsTableViewController.m
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import "SBAContactsTableViewController.h"
#import "SBAContact.h"
#import "SBAContactController.h"
#import "SBADetailsViewController.h"

@interface SBAContactsTableViewController ()

@property (nonatomic) SBAContactController *contactController;

@end

@implementation SBAContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[SBAContactController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //setup dummy data
    [self.contactController.contacts addObject:[SBAContact contactWithName:@"Sal" email:@"sal@sal.com" phone:@"562-766-9999"]];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
//  for (SBAContact *contact in self.contactController.contacts) {
//    [self.tableView reloadData];
//  }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    SBAContact *contact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.email;
    
    return cell;
}

 
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SBADetailsViewController *destination = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"addContactSegue"]){
        destination.contactController = self.contactController;
    } else if ([segue.identifier isEqualToString:@"showContactSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        destination.contact = self.contactController.contacts[indexPath.row];
        destination.contactController = self.contactController;
    }
}
 

@end
