//
//  BYContactController.m
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYContactController.h"
#import "BYContact.h"

@interface BYContactController ()

@property (retain) NSMutableArray *internalArray;

@end

@implementation BYContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalArray = [[[[NSMutableArray alloc] init] retain] autorelease];
    }
    return self;
}

- (void)addContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    BYContact *newContact = [[[BYContact alloc] initWithName:name phoneNumber:phoneNumber email:email] autorelease];
    [self.internalArray addObject:newContact];
}

- (void)updateContact:(BYContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    NSUInteger index = [[[_internalArray indexOfObject:contact] retain] autorelease];
    BYContact *contactToChange = [self.internalArray[index] retain];
    contactToChange.name = name;
    contactToChange.email = email;
    contactToChange.phoneNumber = phoneNumber;
    [contactToChange release];
}

- (NSArray *)contacts {
    return [[self.internalArray copy] autorelease];
}

- (void)dealloc
{
    [_internalArray release];
    _internalArray = nil;
    [_contacts release];
    //_contacts = nil;
    [super dealloc];
}

@end
