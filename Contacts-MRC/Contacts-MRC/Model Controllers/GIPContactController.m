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
        _internalContacts = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}

- (NSArray<GIPContact *> *)contacts {
    return [self.internalContacts retain];
}

- (void)addContact:(GIPContact *)contact {
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(GIPContact *)contact name:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber {
    GIPContact *newContact = [[GIPContact alloc] initWithName:name email:email phoneNumber:phoneNumber];
    NSInteger index = [self.internalContacts indexOfObject:contact];
    self.internalContacts[index] = newContact;
}

- (void)removeContact:(GIPContact *)contact {
    [self.internalContacts removeObject:contact];
    // [contact release];
}

@end
