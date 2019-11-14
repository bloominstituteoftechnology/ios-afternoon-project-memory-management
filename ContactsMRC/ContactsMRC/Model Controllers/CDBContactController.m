//
//  CDBContactController.m
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBContactController.h"

@interface CDBContactController ()

@property (nonatomic, retain) NSMutableArray *contacts;

@end

@implementation CDBContactController

- (instancetype)init {
    if (self = [super init]) {
        _contacts = [[[NSMutableArray alloc] init] retain];
    }
    return self;
}

- (void)addContact:(CDBContact *)contact {
    if (_contacts) {
        [_contacts addObject:contact];
    }
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

@end
