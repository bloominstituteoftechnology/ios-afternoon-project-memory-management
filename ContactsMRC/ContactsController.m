//
//  ContactsController.m
//  ContactsMRC
//
//  Created by Chad Parker on 8/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import "ContactsController.h"
#import "Contact.h"

@interface ContactsController ()

@property (nonatomic) NSMutableArray<Contact *> *contacts;

@end

@implementation ContactsController

- (instancetype)init
{
    if (self = [super init]) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSUInteger)contactCount
{
    return self.contacts.count;
}

- (Contact *)contactAtIndex:(NSInteger)index
{
    return self.contacts[index];
}

- (void)createContact:(Contact *)contact
{
    Contact *newContact = [contact copy];
    [self.contacts addObject:newContact];
}

@end
