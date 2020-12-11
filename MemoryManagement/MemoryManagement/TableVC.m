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

@interface TableVC ()

@property (nonatomic, nullable) ContactController *contactController;

@end

@implementation TableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contactController = [ContactController contactController];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath];
    cell.textLabel.text = [self.contactController.contacts objectAtIndex:indexPath.row].name;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contactController.contacts removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showContactSegue"]) {
        DetailVC *detailVC = (DetailVC *)segue.destinationViewController;
        detailVC.contactController = self.contactController;
        detailVC.contact = [self.contactController.contacts objectAtIndex:[self.tableView indexPathForSelectedRow].row];
    } else if ([segue.identifier isEqual:@"addContactSegue"]) {
        DetailVC *detailVC = (DetailVC *)segue.destinationViewController;
        detailVC.contactController = self.contactController;
    }
}

@end
