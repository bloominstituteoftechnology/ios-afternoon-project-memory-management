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
        _contacts = [[NSMutableArray alloc] init];

        if (_contacts) {
            // Create test data (remove it later)
            [_contacts addObject: [[Contact alloc] initWithName:@"Mark" email:@"lambda@m.gerrior.com" phone:@"650-339-9933"]];
            [_contacts addObject: [[Contact alloc] initWithName:@"Dennis" email:@"dennis@dennisbrazil.com" phone:@"408-829-6678"]];
        }
    }
    return self;
}

// When getter is overridden and we use readonly, we need to tell compiler to make
// a "backing" instance variable named _contacts
@synthesize contacts = _contacts;
- (NSMutableArray<Contact *> *)contacts {
    return _contacts;
}

- (void)create:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    [_contacts addObject: [[Contact alloc] initWithName:name email:email phone:phone]];
}

- (void)delete:(NSUInteger)index {
    [_contacts removeObjectAtIndex:(index)];
}

@end
