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
        _internalArray = [NSMutableArray array];
    }
    return self;
}

- (void)addContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    BYContact *newContact = [[[BYContact alloc] initWithName:name phoneNumber:phoneNumber email:email] autorelease];
    [self.internalArray addObject:newContact];
}

- (void)updateContact:(BYContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    NSUInteger index = [_internalArray indexOfObject:contact];
    BYContact *contactToChange = [self.internalArray[index] autorelease];
    contactToChange.name = name;
    contactToChange.email = email;
    contactToChange.phoneNumber = phoneNumber;
}

- (void)dealloc
{
    [_internalArray release];
    _internalArray = nil;
    [super dealloc];
}

@end
