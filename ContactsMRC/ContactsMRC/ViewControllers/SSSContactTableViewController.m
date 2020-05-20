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

@interface SSSContactTableViewController ()

@property (nonatomic, retain) NSArray<SSSContact *> *contacts;

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
    _contacts = [[NSArray alloc] init];
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

// MARK: - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SSSContact *john = [SSSContact contactWithName:@"John Sprague" emailAddress:@"john.s@gmail.com" phoneNumber:@"489-555-3948"];
    self.contacts = [self.contacts arrayByAddingObject:john];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

// MARK: - Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.contacts[indexPath.row].name;
    
    return cell;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSMutableArray *mutableContacts = [NSMutableArray arrayWithArray:self.contacts];
        [mutableContacts removeObjectAtIndex:indexPath.row];
        self.contacts = mutableContacts;
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowContactSegue"]) {
        SSSContactDetailViewController *contactDetailVC = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        contactDetailVC.contact = self.contacts[indexPath.row];
    }
}


@end
