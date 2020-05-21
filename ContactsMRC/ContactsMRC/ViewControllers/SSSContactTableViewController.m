//
//  SSSContactTableViewController.m
//  ContactsMRC
//
//  Created by Shawn Gee on 5/20/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import "SSSContactTableViewController.h"
#import "SSSContact.h"
#import "SSSContactDetailViewController.h"
#import "SSSContactController.h"

@interface SSSContactTableViewController ()

@property (nonatomic, retain) SSSContactController *contactController;

- (void)setUp;

@end

@implementation SSSContactTableViewController

// MARK: - Init

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setUp];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    _contactController = [[SSSContactController alloc] init];
}

- (void)dealloc {
    [_contactController release];
    [super dealloc];
}

// MARK: - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Mock data
    SSSContact *john = [SSSContact contactWithName:@"John Sprague" emailAddress:@"john.s@gmail.com" phoneNumber:@"489-555-3948"];
    SSSContact *barry = [SSSContact contactWithName:@"Barry Jones" emailAddress:@"baryrocksthehouse@gmail.com" phoneNumber:@"234-555-3903"];
    
    [self.contactController addContact:john];
    [self.contactController addContact:barry];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

// MARK: - Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contactController removeContactAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowContactSegue"]) {
        SSSContactDetailViewController *contactDetailVC = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        contactDetailVC.contact = self.contactController.contacts[indexPath.row];
    } if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        SSSContactDetailViewController *contactDetailVC = segue.destinationViewController;
        contactDetailVC.contactController = self.contactController;
    }
}

@end
