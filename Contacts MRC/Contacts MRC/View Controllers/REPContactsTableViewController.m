//
//  REPContactsTableViewController.m
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPContactsTableViewController.h"

@interface REPContactsTableViewController ()

@property (retain, nonatomic) IBOutlet UIBarButtonItem *plusButton;

@end

@implementation REPContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)plusButtonPressed:(UIBarButtonItem *)sender {
}

// MARK: - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];

    // Configure the cell...

    return cell;
}



- (void)dealloc {
	[_plusButton release];
	[super dealloc];
}
@end
