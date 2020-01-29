//
//  SKSContactsDetailViewController.m
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSContactsDetailViewController.h"

@interface SKSContactsDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@end

@implementation SKSContactsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
