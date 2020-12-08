//
//  IGFContactsTableViewController.m
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import "IGFContactsTableViewController.h"
#import "IGFContactsViewController.h"
#import "IGFContacts.h"
#import "IGFContactsController.h"

@interface IGFContactsTableViewController ()

@property (nonatomic) IGFContactsController *contactController;

@end



@implementation IGFContactsTableViewController


static NSString * const reuseIdentifier = @"ContactCell";

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[IGFContactsController alloc] init];
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


- (void)viewDidLoad
{
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    IGFContactsViewController *contactDetailVC = [segue destinationViewController];
    if ([contactDetailVC isKindOfClass:[IGFContactsViewController class]]) {

        contactDetailVC.contactsController = self.contactController;

        if ([[segue identifier] isEqualToString:@"ViewContactSegue"]) {
            NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
            contactDetailVC.contact = self.contactController.contacts[indexPath.row];
        }
    }
}


@end
