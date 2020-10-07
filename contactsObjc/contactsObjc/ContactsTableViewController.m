//
//  ContactsTableViewController.m
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import "ContactsTableViewController.h"
#import "Contact.h"
#import "ContactController.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController ()

@property ContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contactController = [[[ContactController alloc] init] autorelease];
    
    // Sample Data
    Contact *myself = [[Contact alloc] initWithName:@"Clayton" phoneNumber:@"626161633" email:@"TestEmail@email.com"];
    [self.contactController createContact:myself];
    
    [myself release];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:true];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    Contact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phoneNumber;
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
