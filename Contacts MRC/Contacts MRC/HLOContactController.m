//
//  ContactController.m
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import "HLOContactController.h"
#import "HLOContact.h"

@implementation HLOContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        // MARK:- Jesus christ that's a lot of stuff.
        // MARK:- QUESTION FOR JON: Some explanation on how this works? lol
        _contacts = [[[[NSMutableArray<HLOContact *> alloc] init] autorelease] retain];
    }
    return self;
}

- (void)dealloc {

    [_contacts release];
    _contacts = nil;

    [super dealloc];
}

@end
