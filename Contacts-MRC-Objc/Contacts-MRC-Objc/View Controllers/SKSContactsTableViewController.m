//
//  SKSContactsTableViewController.m
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSContactsTableViewController.h"
#import "SKSContactsDetailViewController.h"
#import "SKSContactsController.h"
#import "SKSContact.h"

@interface SKSContactsTableViewController ()

@property (nonatomic) SKSContactsController *contactController;

@end

@implementation SKSContactsTableViewController

static NSString * const reuseIdentifier = @"ContactCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[SKSContactsController alloc] init];


        SKSContact *contact1 = [SKSContact contactWithName:@"Bob" email:@"bob@gmail.com" number:@"123456789"];
        SKSContact *contact2 = [SKSContact contactWithName:@"Joe" email:@"Joe@gmail.com" number:@"987654321"];
        [self.contactController addContact:contact1];
        [self.contactController addContact:contact2];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];

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
    
    // Configure the cell...
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    SKSContactsDetailViewController *detailVC = [segue destinationViewController];
    if ([detailVC isKindOfClass:[SKSContactsDetailViewController class]]) {

        detailVC.contactsController = self.contactController;

        if ([[segue identifier] isEqualToString:@"ShowDetailContactSegue"]) {
            NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
            detailVC.contact = self.contactController.contacts[indexPath.row];
        }
    }

}


@end
