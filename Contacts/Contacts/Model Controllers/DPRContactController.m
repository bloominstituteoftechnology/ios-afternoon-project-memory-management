//
//  DPRContactController.m
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DPRContactController.h"

@implementation DPRContactController

- (void)addContact:(DPRContact *)contact {
    [_contacts addObject:contact];
}

- (void)updateContact:(DPRContact *)contact name:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    DPRContact *newContact = [[DPRContact alloc] initWithName:name email:email phone:phone];
    NSInteger index = [self.contacts indexOfObject:contact];
    self.contacts[index] = newContact;
}

@end
