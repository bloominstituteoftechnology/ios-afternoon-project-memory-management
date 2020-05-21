//
//  WAHContactController.m
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import "WAHContactController.h"

@implementation WAHContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(WAHContact *)contact {
    [self.contacts addObject:contact];
}



@end
