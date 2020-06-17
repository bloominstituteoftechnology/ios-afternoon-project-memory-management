//
//  CDGContactController.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "CDGContactController.h"
#import "CDGContact.h"

@interface CDGContactController()

@property (nonatomic, retain) NSMutableArray *internalContacts;

@end

@implementation CDGContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[[[NSMutableArray alloc] init] retain] autorelease];
    }
    return self;
}

-(void)createContactWithName:(NSString *)name
                       phone:(NSString *)phone
                       email:(NSString *)email {
    CDGContact *contact = [[[CDGContact alloc] initWithName:name
                                               emailAddress:email
                                                phoneNumber:phone] autorelease];
    [self.internalContacts addObject:contact];
}

-(NSArray *)contacts
{
    return [[self.internalContacts copy] autorelease];
}

- (void)dealloc
{
    [_internalContacts release];
    [_contacts release];
    _contacts = nil;
    
    [super dealloc];
}

@end
