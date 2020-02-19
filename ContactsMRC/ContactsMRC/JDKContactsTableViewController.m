//
//  JDKContactsTableViewController.m
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKContactsTableViewController.h"
#import "JDKContactDetailsViewController.h"
#import "JDKContactsController.h"
#import "JDKContact.h"

@interface JDKContactsTableViewController ()

@property (nonatomic) JDKContactsController *contactController;

@end

@implementation JDKContactsTableViewController

static NSString *const reuseIdentifier = @"ContactCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[JDKContactsController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

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
    JDKContactDetailsViewController *destinationVC = [segue destinationViewController];
    if ([destinationVC isKindOfClass:[JDKContactDetailsViewController class]]) {
        destinationVC.contactController = self.contactController;
        
        if ([[segue identifier] isEqualToString:@"ShowDetailSegue"]) {
            NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
            destinationVC.contact = self.contactController.contacts[indexPath.row];
        }
    }
}

@end
