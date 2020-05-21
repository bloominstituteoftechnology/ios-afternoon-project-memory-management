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
- (NSMutableArray<CBDContact *> *)contacts {
    if (!_contacts) {
        CBDContact *christopher = [[CBDContact alloc] initWithName:@"Christopher" email:@"christopher.devito@protonmail.com" phone:@"123-456-7890"];
        CBDContact *mom = [[CBDContact alloc] initWithName:@"Mom" email:@"mom@mom.com" phone:@"098-765-4321"];
        [_contacts addObjectsFromArray:@[
            christopher,
            mom,
        ]];
    }
    return _contacts;
}

- (instancetype)init {
    self = [super init];
    if (self) {

    }
    return self;
}

@end
