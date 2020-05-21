//
//  ContactTableViewController.m
//  MemoryManagement
//
//  Created by Lambda_School_Loaner_268 on 5/20/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import "ContactTableViewController.h"
#import "LSIFileHelper.h"
#import "MSKContactDetailViewController.h"

#import "MainNav.h"

@interface ContactTableViewController ()

@end

@implementation ContactTableViewController


- (void)viewDidLoad {
    
    MSKContact *bob = [[MSKContact alloc] initWithName: @"Bob's Burgers"
                                          contactEmail: @"Fucking great show!"
                                          contactPhone:@"(925)-483-9909"];
    
    [contacts addObject:bob];
    NSLog(@"Je Suis initializer");
    [super viewDidLoad];
    [self.tableView reloadData];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return contacts.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath];
    MSKContact *contact = contacts[indexPath.row];
    NSString *name = contact.contactName;
    // Configure the cell...
    cell.textLabel.text = name;
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"contactDetail" sender:indexPath];
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //remove the deleted object from your data source.
        //If your data source is an NSMutableArray, do this
        [contacts removeObjectAtIndex:indexPath.row];
        [tableView reloadData]; // tell table to refresh now
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier  isEqual:  @"contactDetail"]) {
       NSIndexPath *indexPath = (NSIndexPath *)sender;
        MSKContactDetailViewController *detailVC = segue.destinationViewController;
        detailVC.contact = contacts[indexPath.row];
         
    } else {
        MSKContactDetailViewController *detailVC = segue.destinationViewController;
    }
}


@end
