//
//  JBContactsController.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBContactsController.h"
#import "JBContact.h"


@interface JBContactsController()

@property (retain, nonatomic) NSMutableArray *privateContacts;

@end


@implementation JBContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _privateContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray<JBContact *> *)contacts
{
    return [[self.privateContacts copy] autorelease];
}

- (void)addContactWithName:(NSString *)name
              emailAddress:(NSString *)emailAddress
               phoneNumber:(NSString *)phoneNumber
{
    [self.privateContacts
     addObject:[[JBContact alloc] initWithName:name
                                  emailAddress:emailAddress
                                   phoneNumber:phoneNumber]];
}

- (void)updateContact:(JBContact *)contact
             withName:(NSString *)name
         emailAddress:(NSString *)emailAddress
          phoneNumber:(NSString *)phoneNumber
{
    contact.name = name;
    contact.emailAddress = emailAddress;
    contact.phoneNumber = phoneNumber;
}

- (void)removeContact:(JBContact *)contact
{
    [self.privateContacts removeObject:contact];
}

- (void)dealloc
{
    [_privateContacts release];
    _privateContacts = nil;
    [super dealloc];
}
@end
