//
//  TableVC.m
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import "TableVC.h"
#import "Contact.h"
#import "ContactController.h"
#import "DetailVC.h"

@interface TableVC () <ContactDelegate>

@end

@implementation TableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    ContactController *sharedController = ContactController.sharedInstance;
    self.contacts = [[[NSMutableArray<Contact *> alloc] init] autorelease];
    NSLog(@"Shared Contact Controller: %@", sharedController);
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath];
    cell.textLabel.text = [self.contacts objectAtIndex:indexPath.row].name;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contacts removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showContactSegue"]) {
        DetailVC *detailVC = (DetailVC *)segue.destinationViewController;
        detailVC.delegate = self;
        detailVC.contact = [self.contacts objectAtIndex:[self.tableView indexPathForSelectedRow].row];
    } else if ([segue.identifier isEqual:@"addContactSegue"]) {
        DetailVC *detailVC = (DetailVC *)segue.destinationViewController;
        detailVC.delegate = self;
    }
}

#pragma mark - ContactDelegate

- (void)didAddContact
{
    [self.tableView reloadData];
}

- (void)addContact:(Contact *)contact
{
    [self.contacts addObject:contact];
}

- (void)dealloc
{
    [_contacts release];
    [super dealloc];
}

@end
