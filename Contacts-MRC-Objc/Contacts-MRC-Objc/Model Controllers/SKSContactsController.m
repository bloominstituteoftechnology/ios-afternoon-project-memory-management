//
//  SKSContactsController.m
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSContactsController.h"

@interface SKSContactsController()

@end

@implementation SKSContactsController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}



- (void)addContact:(SKSContact *)contact {
    [self.contacts addObject:contact];
}

- (void)dealloc {
    [_contacts release];
    _contacts = nil;
    [super dealloc];
}

@end
