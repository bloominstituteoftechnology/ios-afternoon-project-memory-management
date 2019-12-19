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

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] initWithArray:@[]];
    }
    return self;
}

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

- (void)saveContactsToPList {
    NSMutableArray *savingArray = [[[NSMutableArray alloc] init] autorelease];
    for (JLRContact *contact in _contacts) {
        NSDictionary *dictionary = [contact toDictionary];
        [savingArray addObject:dictionary];
    }
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *path = [documentDirectory stringByAppendingPathComponent:@"contact.plist"];
    NSArray *savingArrayNotMutable = [NSArray arrayWithArray:savingArray];
    [savingArrayNotMutable writeToFile:path atomically:YES];
}

- (void)loadContactsFromPlist {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"contact.plist"];
    NSArray *contactsArray = [[[NSArray alloc] initWithContentsOfFile:path] autorelease];
    for(NSDictionary *dictionary in contactsArray) {
        JLRContact *contact = [[[JLRContact alloc] initWithFileDictionary:dictionary] autorelease];
        [self.contacts addObject:contact];
    }
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

@end
