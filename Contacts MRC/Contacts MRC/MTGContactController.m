//
//  MTGContactController.m
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import "MTGContactController.h"
#import "Contact.h"

@implementation MTGContactController

- (instancetype)init {
    [super init];
    if (self) {
//        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

// When getter is overridden and we use readonly, we need to tell compiler to make
// a "backing" instance variable named _contacts
@synthesize contacts = _contacts;
- (NSArray<Contact *> *)contacts {
    if (!_contacts) {
        _contacts = @[
            // Create test data (remove it later)
            [[Contact alloc] initWithName:@"Mark" email:@"lambda@mark.gerrior.com" phone:@"650-339-9933"],
            [[Contact alloc] initWithName:@"Dennis" email:@"dennis@dennisbrazil.com" phone:@"408-829-6678"],
        ];
    }
    return _contacts;
}

@end
