//
//  GIPContactsTableViewController.m
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPContactsTableViewController.h"
#import "GIPDetailViewController.h"
#import "GIPContactController.h"
#import "GIPContact.h"

@interface GIPContactsTableViewController ()
- (IBAction)addNewContact:(id)sender;

@end

@implementation GIPContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[GIPContactController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controller.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.controller.contacts objectAtIndex:indexPath.row].name;
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.controller removeContact:[self.controller.contacts objectAtIndex:indexPath.row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddNewContactSegue"]) {
        GIPDetailViewController *detailVC = (GIPDetailViewController *)segue.destinationViewController;
        detailVC.controller = self.controller;
    } else if ([segue.identifier isEqualToString:@"DetailViewSegue"]) {
        GIPDetailViewController *detailVC = (GIPDetailViewController *)segue.destinationViewController;
        detailVC.controller = self.controller;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        detailVC.contact = [self.controller.contacts objectAtIndex:indexPath.row];
    }
}


- (IBAction)addNewContact:(id)sender {
    [self performSegueWithIdentifier:@"AddNewContactSegue" sender:self];
}

- (void)dealloc {
    [_controller release];
    _controller = nil;
    [super dealloc];
}
@end
