//
//  GIPContactController.m
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPContactController.h"
#import "GIPContact.h"

@interface GIPContactController()

@property (retain) NSMutableArray *internalContacts;

@end

@implementation GIPContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _internalContacts = [[NSMutableArray alloc] initWithObjects:
                              [[[GIPContact alloc] initWithName:@"John" email:@"johngk93@gmail.com" phoneNumber:@"7143368822"] autorelease],
                              [[[GIPContact alloc] initWithName:@"Steve" email:@"stebong@gmail.com" phoneNumber:@"5627145544"] autorelease],
                              nil];
    }
    return self;
}

- (NSArray<GIPContact *> *)contacts {
    return [[self.internalContacts retain] autorelease];
}

//- (void)setContacts:(NSArray<GIPContact *> *)contacts {
//    if (self.contacts != contacts) {
//        [self.contacts release];
//        self.contacts = [contacts retain];
//    }
//}

- (void)addContact:(GIPContact *)contact {
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(GIPContact *)contact name:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber {
    GIPContact *newContact = [[GIPContact alloc] initWithName:name email:email phoneNumber:phoneNumber];
    NSInteger index = [self.internalContacts indexOfObject:contact];
    self.internalContacts[index] = newContact;
    [newContact release];
}

- (void)removeContact:(GIPContact *)contact {
    [self.internalContacts removeObject:contact];
    // [contact release];
}

- (void)dealloc {
    [_contacts release];
    [_internalContacts release];
    _contacts = nil;
    _internalContacts = nil;
    [super dealloc];
}

@end
