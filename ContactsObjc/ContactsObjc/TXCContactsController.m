//
//  TXCContactsController.m
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCContactsController.h"
#import "TXCContact.h"
@interface TXCContactsController () {
    
}
@property NSMutableArray *internalContacts;
@end

@implementation TXCContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[[NSMutableArray alloc] init] autorelease];
        [self addTextContacts];
    }
    return self;
}

- (void)addTextContacts {
    TXCContact *contact1 = [[TXCContact alloc] initWithName:@"Tom" email:@"Tom123@fakeemail.com" phone:@"555-5555"];
    TXCContact *contact2 = [[TXCContact alloc] initWithName:@"Maria" email:@"Maria456@fakeemail.com" phone:@"555-7777"];
    [self addContact:contact1];
    [self addContact:contact2];
}

- (NSArray *)contacts {
    return [_internalContacts copy];
}

- (void)addContact:(TXCContact *)contact {
    [_internalContacts addObject:contact];
}

- (void)removeContact:(TXCContact *)contact {
    [_internalContacts removeObject:contact];
}
@end
