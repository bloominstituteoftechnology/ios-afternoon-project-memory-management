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

@interface TableVC () <ContactControllerDelegate>

@end

@implementation TableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    ContactController *sharedController = ContactController.sharedContactController;
    NSLog(@"Shared Contact Controller: %@", sharedController);
    ContactController.sharedContactController.delegate = self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ContactController.sharedContactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath];
    cell.textLabel.text = [ContactController.sharedContactController.contacts objectAtIndex:indexPath.row].name;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [ContactController.sharedContactController.contacts removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showContactSegue"]) {
        DetailVC *detailVC = (DetailVC *)segue.destinationViewController;
        detailVC.contact = [ContactController.sharedContactController.contacts objectAtIndex:[self.tableView indexPathForSelectedRow].row];
    }
}

#pragma mark - ContactControllerDelegate

- (void)didAddContact
{
    [self.tableView reloadData];
}

@end
