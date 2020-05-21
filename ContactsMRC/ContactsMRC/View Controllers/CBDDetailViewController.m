//
//  CBDDetailViewController.m
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDDetailViewController.h"
#import "CBDContact.h"
#import "CBDContactController.h"

@interface CBDDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation CBDDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveContactTapped:(id)sender {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
