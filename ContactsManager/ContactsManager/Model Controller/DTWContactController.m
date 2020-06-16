//
//  DTWContactController.m
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import "DTWContactController.h"
#import "DTWContact.h"

@interface DTWContactController () {
    NSMutableArray *_internalContacts;
}

@end

@implementation DTWContactController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
        [self addTestData];
    }
    return self;
}

- (void)addTestData
{
    DTWContact *contact1 = [[DTWContact alloc] initWithName:@"David Wright" Email:@"david.wright@email.com" PhoneNumber:@"123-456-7890"];
    DTWContact *contact2 = [[DTWContact alloc] initWithName:@"Katie Wright" Email:@"katie.wright@email.com" PhoneNumber:@"234-789-1560"];
    DTWContact *contact3 = [[DTWContact alloc] initWithName:@"Tim Apple" Email:@"tim.apple@email.com" PhoneNumber:@"555-1029-1560"];
    
    [_internalContacts addObject:contact1];
    [_internalContacts addObject:contact2];
    [_internalContacts addObject:contact3];
    [contact1 release];
    [contact2 release];
    [contact3 release];
}

- (NSArray<DTWContact *> *)contacts
{
    return [_internalContacts.copy autorelease];
}

- (void)dealloc
{
    [_internalContacts release];
    [super dealloc];
}

- (NSInteger)contactCount
{
    return _internalContacts.count;
}

- (DTWContact *)contactAtIndex:(NSInteger)index
{
    DTWContact *contact = [_internalContacts objectAtIndex:index];
    return contact;
}

- (void)deleteContactAtIndex:(NSInteger)index
{
    [_internalContacts removeObjectAtIndex:index];
}

- (void)createContactWithContact:(DTWContact *)contact
{
    [_internalContacts addObject:contact];
}

- (void)createContactWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    DTWContact *contact = [[[DTWContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber] autorelease];
    [self createContactWithContact:contact];
}

- (void)updateContactAtIndex:(NSInteger)index withContact:(DTWContact *)contact
{
    [_internalContacts setObject:contact atIndexedSubscript:index];
}

- (void)updateContactAtIndex:(NSInteger)index withName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    DTWContact *contact = [[[DTWContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber] autorelease];
    [self updateContactAtIndex:index withContact:contact];
}

- (void)updateContact:(DTWContact *)contact withName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    contact.name = name;
    contact.email = email;
    contact.phoneNumber = phoneNumber;
    
    NSUInteger index = [_internalContacts indexOfObject:contact];
    
    DTWContact *updatedContact = [[[DTWContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber] autorelease];
    
    [_internalContacts setObject:updatedContact atIndexedSubscript:index];
}

@end
