//
//  ContactController.m
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@interface ContactController ()
{
    NSMutableArray *_contactsInternal;
}

@end

@implementation ContactController

- (instancetype) init
{
    self = [super init];
    
    if(self)
    {
        _contactsInternal = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray<Contact *> *)contacts
{
    return _contactsInternal.copy;
}

- (void)addContact:(Contact *)contact
{
    [_contactsInternal addObject:contact];
}

-(void)dealloc
{
    [_contactsInternal release];
    [super dealloc];
}

@end
