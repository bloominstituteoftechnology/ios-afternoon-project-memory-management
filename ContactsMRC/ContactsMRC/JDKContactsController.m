//
//  JDKContactsController.m
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKContactsController.h"
#import "JDKContact.h"

@implementation JDKContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(JDKContact *)contact
{
    [self.contacts addObject:contact];
}

- (void)dealloc
{
    [_contacts release];
    
    [super dealloc];
}

@end
