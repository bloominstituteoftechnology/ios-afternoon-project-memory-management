//
//  JACContactController.m
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACContactController.h"
@interface JACContactController ()

@property (nonatomic, retain) NSMutableArray *contacts;

@end

@implementation JACContactController
- (instancetype)init {
    if (self = [super init]) {
        _contacts = [[[NSMutableArray alloc] init] retain];
    }
    return self;
}

- (NSUInteger)getContactsCount {
    if (_contacts) {
        return [_contacts count];
    }
    return 0;
}

-(JACContact *)getContactAtIndex:(int)index {
    if ([_contacts objectAtIndex:index]) {
        return [_contacts objectAtIndex:index];
    }
    return nil;
}

- (void)addContact:(JACContact *)newContact {
    if (_contacts) {
        [_contacts addObject:newContact];
    }
}

- (nullable JACContact *)removeContactAtIndex:(int)index {
    if ([_contacts objectAtIndex:index]) {
        [_contacts removeObject:[_contacts objectAtIndex:index]];
    }
    return nil;
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

@end
