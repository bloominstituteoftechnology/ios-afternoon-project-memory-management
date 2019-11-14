//
//  CDBContactController.m
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBContactController.h"
#import "CDBContact.h"

@interface CDBContactController ()

@property (nonatomic, retain) NSMutableArray *internalContactsArray;

@end

@implementation CDBContactController

- (instancetype)init {
    self = [super init];
    if (self) {                         // buy the land] make it] own it] give it back]
        _internalContactsArray = [[[[NSMutableArray alloc] init] retain] autorelease];
    }
    return self;
}

- (void)addContactWithName:(NSString *)name withEmail:(NSString *)email withPhoneNumber:(NSString *)phoneNumber {
    CDBContact *newContact = [[[CDBContact alloc] initWithName:name withEmail:email withPhoneNumber:phoneNumber] autorelease];
    [self.internalContactsArray addObject:newContact];
}

- (NSArray *)contacts {
    return [[self.internalContactsArray copy] autorelease];
}

- (void)dealloc {
    [_internalContactsArray release];
    [_contacts release];
    [super dealloc];
}

@end
