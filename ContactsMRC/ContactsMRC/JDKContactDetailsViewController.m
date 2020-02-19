//
//  JDKContactDetailsViewController.m
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKContactDetailsViewController.h"

@interface JDKContactDetailsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;


@end

@implementation JDKContactDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender
{
    
}


- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}
@end
