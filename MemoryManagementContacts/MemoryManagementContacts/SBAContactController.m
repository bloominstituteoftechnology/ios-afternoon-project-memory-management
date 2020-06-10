//
//  SBAContactController.m
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import "SBAContactController.h"
#import "SBAContact.h"

@implementation SBAContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[[[NSMutableArray<SBAContact *> alloc] init] autorelease] retain];
    }
    return self;
}

- (void)newContactWithName:(NSString *)name
                     email:(NSString *)email
                     phone:(NSString *)phone
{
    [self.contacts addObject: [SBAContact contactWithName:name email:email phone:phone]];
}

//dealloc
- (void)dealloc {
    [_contacts release];
//    _contacts = nil;
    [super dealloc];
}

@end
