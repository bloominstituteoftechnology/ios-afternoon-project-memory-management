//
//  ContactsController.m
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "ContactsController.h"
#import "Contact.h"

@interface ContactsController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation ContactsController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
        
        Contact *contact = [[Contact alloc] initWithName:@"Robert Keffury" emailAddress:@"bobby.keffury@me.com" phoneNumber:@"8057043343"];
        [_internalContacts addObject:contact];
        [contact release];
    }
    
    return self;
}

- (void)addContact:(Contact *)aContact
{
    [_internalContacts addObject: aContact];
}

- (void)removeContact:(Contact *)aContact
{
    [_internalContacts removeObject: aContact];
}

- (NSArray<Contact *> *)contacts
{
    return [_internalContacts.copy autorelease];
}

@end
