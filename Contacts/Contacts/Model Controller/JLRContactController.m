//
//  JLRContactController.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRContactController.h"
#import "JLRContact.h"

@interface JLRContactController ()

@property (nonatomic, retain) NSMutableArray *internalContacts;

@end

@implementation JLRContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[[[NSMutableArray alloc] init] retain] autorelease];
    }
    return self;
}

- (void)createContactWithName:(NSString *)name
                                phone:(NSString *)phone
                                email:(NSString *)email {
    JLRContact *contact = [[[JLRContact alloc] initWithName:name phone:phone email:email] autorelease];
    [self.internalContacts addObject:contact];
}

- (NSArray *)contacts {
    return [[self.internalContacts copy] autorelease];
}

- (void)dealloc {
    [_internalContacts release];
    [_contacts release];
    [super dealloc];
}

@end
