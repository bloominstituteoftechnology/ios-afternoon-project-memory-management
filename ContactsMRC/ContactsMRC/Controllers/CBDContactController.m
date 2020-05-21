//
//  CBDContactController.m
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDContactController.h"
#import "CBDContact.h"

@implementation CBDContactController

@synthesize contacts = _contacts;
- (NSMutableArray<CBDContact *> *)contact {
    if (!_contacts) {
        _contacts = [[[NSMutableArray alloc] init] autorelease];
    }
    NSLog(@"contacts init: %@", _contacts);
    return _contacts;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}

@end
