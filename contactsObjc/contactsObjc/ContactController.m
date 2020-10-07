//
//  ContactController.m
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import "ContactController.h"

@interface ContactController ()
{
    NSMutableArray *_internalContacts;
}
@end

@implementation ContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray<Contact *> *)contacts
{
    return [_internalContacts.copy autorelease];
}

- (void)createContact:(Contact *)contact
{
    [_internalContacts addObject:contact];
}

- (NSInteger)contactCount
{
    return _internalContacts.count;
}

- (void)dealloc
{
    [_internalContacts release];
    [super dealloc];
}

@end
