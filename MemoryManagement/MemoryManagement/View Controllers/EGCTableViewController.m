//
//  EGCTableViewController.m
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import "EGCTableViewController.h"
#import "EGCContact.h"
#import "EGCContactController.h"
#import "EGCViewController.h"

@interface EGCTableViewController ()

@property (nonatomic, readonly) EGCContactController *contactController;

@end

@implementation EGCTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[EGCContactController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_contactController addContact:[EGCContact contactWithName:@"Enrique" email:@"Enrique@gmail.com" phone:@"123-456-7890"]];
    [_contactController addContact:[EGCContact contactWithName:@"Madison" email:@"Madison@gmail.com" phone:@"123-456-7890"]];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    EGCContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"DetailSegue" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddSegue"]) {
        EGCViewController *addVC = [segue destinationViewController];
        addVC.contactController = self.contactController;
        
    } else if ([[segue identifier] isEqualToString:@"DetailSegue"]) {
        EGCViewController *detailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        detailVC.contactController = self.contactController;
        detailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    }
}

@end

