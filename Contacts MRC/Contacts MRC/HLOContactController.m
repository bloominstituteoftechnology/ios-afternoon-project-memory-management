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
        _contacts = [[[NSMutableArray<HLOContact *> alloc] init] autorelease];
    }
    return self;
}

@end
