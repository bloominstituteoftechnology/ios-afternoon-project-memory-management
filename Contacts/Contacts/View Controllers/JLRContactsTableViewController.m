//
//  JLRContactsTableViewController.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRContactsTableViewController.h"
#import "DetailViewController.h"
#import "JLRContactController.h"
#import "JLRContact.h"

@interface JLRContactsTableViewController ()

@end

@implementation JLRContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[[[JLRContactController alloc] init] retain] autorelease];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _controller = [[[[JLRContactController alloc] init] retain] autorelease];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testData];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)testData {
    [self.controller createContactWithName:@"Jesse Ruiz" phone:@"123-456-7890" email:@"me@me.com"];
    [self.controller createContactWithName:@"Carly Ruiz" phone:@"098-765-4321" email:@"her@her.com"];
    [self.controller createContactWithName:@"John Fortune" phone:@"123-098-4756" email:@"him@him.com"];
    [self.controller createContactWithName:@"Tiffany Fortune" phone:@"019-283-4756" email:@"tiff@hairdesign.com"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.controller.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[[tableView dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath] retain] autorelease];
    
    JLRContact *contact = [[self.controller.contacts[indexPath.row] retain] autorelease];
    
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phone;
    
    return cell;
}

 #pragma mark - Navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     if ([segue.identifier isEqualToString:@"ShowContact"]) {
         DetailViewController *destinationVC = (DetailViewController *)[segue destinationViewController];
         NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
         JLRContact *contact = self.controller.contacts[indexPath.row];
         destinationVC.contact = contact;
         destinationVC.controller = self.controller;
     } else if ([segue.identifier isEqualToString:@"AddContact"]) {
         DetailViewController *destinationVC = (DetailViewController *)[segue destinationViewController];
         destinationVC.controller = self.controller;
     }
 }

- (void)dealloc {
    [_controller release];
    [super dealloc];
}

@end
