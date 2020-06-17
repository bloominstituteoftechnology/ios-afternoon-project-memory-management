//
//  CMDContactsTableViewController.m
//  Contacts-MRC
//
//  Created by Chris Dobek on 6/17/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

#import "CMDContactsTableViewController.h"
#import "CMDContactsDetailViewController.h"
#import "CMDContactsController.h"
#import "CMDContact.h"

@interface CMDContactsTableViewController ()

@property (nonatomic) CMDContactsController *contactController;

@end

@implementation CMDContactsTableViewController

static NSString * const reuseIdentifier = @"ContactCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[CMDContactsController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.contactController randomUsersContacts:@"5" completion:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CMDContactsDetailViewController *detailVC = [segue destinationViewController];
    if ([detailVC isKindOfClass:[CMDContactsDetailViewController class]]) {
        
        detailVC.contactsController = self.contactController;
        
        if ([[segue identifier] isEqualToString:@"ShowDetailContactSegue"]) {
            NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
            detailVC.contact = self.contactController.contacts[indexPath.row];
        }
    }
}

@end
