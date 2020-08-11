//
//  ContactController.m
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "ContactController.h"

@interface ContactController()

@property NSMutableArray<Contact *> *internalContacts;

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

- (void)addContact:(Contact *)contact
{
    [self.internalContacts addObject:contact];
}

- (NSArray<Contact *> *)contacts
{
    return [self.internalContacts.copy autorelease];
}

@end
