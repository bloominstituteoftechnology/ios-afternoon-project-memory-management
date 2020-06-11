//
//  DTWContactController.m
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import "DTWContactController.h"
#import "DTWContact.h"

@interface DTWContactController ()

@property (nonatomic, retain) NSMutableArray *internalContacts;

@end

@implementation DTWContactController

@synthesize contacts = _contacts;
- (NSArray<DTWContact *> *)contacts
{
    if (!_contacts) {
        DTWContact *contact1 = [[DTWContact alloc] initWithName:@"David Wright" Email:@"david.wright@email.com" PhoneNumber:@"123-456-7890"];
        DTWContact *contact2 = [[DTWContact alloc] initWithName:@"Katie Wright" Email:@"katie.wright@email.com" PhoneNumber:@"234-789-1560"];
        DTWContact *contact3 = [[DTWContact alloc] initWithName:@"Tim Apple" Email:@"tim.apple@email.com" PhoneNumber:@"555-1029-1560"];
        
        NSMutableArray *startingContacts = [[NSMutableArray alloc] init];
        [startingContacts addObject:contact1];
        [startingContacts addObject:contact2];
        [startingContacts addObject:contact3];
        [contact1 release];
        [contact2 release];
        [contact3 release];
        
        _contacts = startingContacts.copy;
        [startingContacts release];
    }
    return _contacts;
}

- (void)dealloc
{
    [_internalContacts release];
    [_contacts release];
    [super dealloc];
}

- (NSInteger)contactCount
{
    return _internalContacts.count;
}

- (DTWContact *)contactAtIndex:(NSInteger)index
{
    DTWContact *contact = [self.internalContacts objectAtIndex:index];
    return contact;
}

- (void)deleteContactAtIndex:(NSInteger)index
{
    [self.internalContacts removeObjectAtIndex:index];
}

- (void)createContactWithContact:(DTWContact *)contact
{
    [self.internalContacts addObject:contact];
//    [contact release];
}

- (void)createContactWithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber
{
    DTWContact *contact = [[[DTWContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber] autorelease];
    [self createContactWithContact:contact];
}

- (void)updateContactAtIndex:(NSInteger)index WithContact:(DTWContact *)contact
{
    [self.internalContacts setObject:contact atIndexedSubscript:index];
//    [contact release];
}

- (void)updateContactAtIndex:(NSInteger)index WithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber
{
    DTWContact *contact = [[[DTWContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber] autorelease];
    [self updateContactAtIndex:index WithContact:contact];
}

@end
