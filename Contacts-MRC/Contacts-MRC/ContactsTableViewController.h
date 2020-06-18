//
//  ContactsTableViewController.h
//  Contacts-MRC
//
//  Created by Hunter Oppel on 6/17/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;

@interface ContactsTableViewController : UIViewController

@property (retain, nonatomic) NSMutableArray<Contact *> *contacts;

@end

