//
//  JACContactsTableViewController.m
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACContactsTableViewController.h"
#import "JACContactDetailViewController.h"
#import "JACContactController.h"
#import "JACContact.h"

@interface JACContactsTableViewController ()
@property (nonatomic, retain) JACContactController *controller;
@end

@implementation JACContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        _controller = [[[JACContactController alloc] init] retain];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.controller getContactsCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    JACContact *contact = [[self.controller getContactAtIndex:(int)[indexPath row]] retain];
    
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phoneNumber;
    
    [contact release];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_controller removeContactAtIndex:(int)[indexPath row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    JACContactDetailViewController *detailVC = [segue destinationViewController];
    
    if ([[segue identifier] isEqual:@"ShowAddContactSegue"]) {
        
        
    } else if ([[segue identifier] isEqual:@""]) {
        detailVC.controller = self.controller;
        detailVC.contact = [_controller getContactAtIndex:(int)self.tableView.indexPathForSelectedRow];
    }
}

- (void)dealloc {
    [_controller release];
    [super dealloc];
}

@end
