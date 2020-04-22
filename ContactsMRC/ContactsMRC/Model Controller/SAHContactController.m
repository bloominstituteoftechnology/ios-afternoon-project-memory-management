//
//  SAHContactController.m
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import "SAHContactController.h"
#import "SAHContact.h"

@interface SAHContactController ()

@property (nonatomic, readwrite, retain) NSMutableArray<SAHContact *> *internalContacts;

@end

@implementation SAHContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        [self initTestContacts];
    }
    return self;
}

-(void)initTestContacts {
    SAHContact *contact1 = [[SAHContact alloc] initWithName:@"Scott Harris" phone:@"609-333-4444" email:@"scottharris1122@test.com"];
    SAHContact *contact2 = [[SAHContact alloc] initWithName:@"Joe Exotic" phone:@"609-879-5432" email:@"iwassetup@carolebaskin.com"];
    [self.internalContacts addObject:contact1];
    [self.internalContacts addObject:contact2];
    [contact1 release];
    [contact2 release];
    contact1 = nil;
    contact2 = nil;
}

- (NSArray<SAHContact *> *)contacts {
    return [[self.internalContacts copy] autorelease];
}

- (void)createContact:(SAHContact *)contact {
    [self.internalContacts addObject:contact];
}

- (void)dealloc {
    [_internalContacts release];
    [super dealloc];
}



@end
