//
//  VVSTableViewController.m
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSTableViewController.h"
#import "VVSContact.h"
#import "VVSContactController.h"
#import "VVSViewController.h"

@interface VVSTableViewController ()

@property (nonatomic, readonly) VVSContactController *contactController;

@end

@implementation VVSTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[VVSContactController alloc] init];
    }
    return self;
}
    

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.contactController.contacts.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    VVSContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    
    cell.textLabel.text = contact.name;
    return cell;
}

#pragma mark - Navigation

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"DetailSegue" sender:indexPath];
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddSegue"])
    {
        VVSViewController *addVC = [segue destinationViewController];
        
        addVC.contactController = self.contactController;
        
    } else if ([[segue identifier] isEqualToString:@"DetailSegue"])
    {
        VVSViewController *detailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        detailVC.contactController = self.contactController;
        detailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    }
}

@end
