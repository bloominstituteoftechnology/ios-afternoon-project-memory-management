//
//  JLRContactController.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRContactController.h"
#import "JLRContact.h"

@implementation JLRContactController

- (JLRContact *)createContactWithName:(NSString *)name
                                phone:(NSString *)phone
                                email:(NSString *)email {
    JLRContact *contact = [[[JLRContact alloc] init] autorelease];
    contact.name = name;
    contact.phone = phone;
    contact.email = email;
    return contact;
}

- (void)updateContact:(JLRContact *)contact withName:(NSString *)name
                phone:(NSString *)phone
             andEmail:(NSString *)email {
    contact.name = name;
    contact.phone = phone;
    contact.email = email;
}

- (void)deleteContact:(JLRContact *)contact {
    
}

@end
