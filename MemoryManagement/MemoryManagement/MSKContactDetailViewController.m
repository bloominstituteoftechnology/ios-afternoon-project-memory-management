//
//  MSKContactDetailViewController.m
//  MemoryManagement
//
//  Created by Lambda_School_Loaner_268 on 5/20/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import "MSKContactDetailViewController.h"
#import "MSKContact.h"
#import "ContactTableViewController.h"
#import "MainNav.h"


@interface MSKContactDetailViewController ()
@end

@implementation MSKContactDetailViewController
-(instancetype)init {
    self = [super init];
    return self;
}
- (void)dealloc {
    [_nameTF release];
    [_phoneTf release];
    [_emailTF release];
    [super dealloc];
}
- (IBAction)save:(UIBarButtonItem *)sender {
    if (_nameTF == nil) {
        self.nameTF.text = @"Unknown Name";
    }

    [contacts addObject:[[MSKContact alloc] initWithName:self.nameTF.text
                                             contactEmail:self.emailTF.text
                                             contactPhone:self.phoneTf.text]];
    [self dealloc];
    ContactTableViewController *bad = [[ContactTableViewController alloc] init];
    [self presentViewController:bad  animated:true completion:nil];
    }

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_contact){
        _nameTF.text = _contact.contactName;
        _emailTF.text = _contact.contactEmail;
        _phoneTf.text = _contact.contactPhone;
        
    }
    // Do any additional setup after loading the view.
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
