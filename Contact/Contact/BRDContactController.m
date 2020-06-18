//
//  BRDContactController.m
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import "BRDContactController.h"

@implementation BRDContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(BRDContact *)contact {
    [self.contacts addObject:contact];
}

@end
