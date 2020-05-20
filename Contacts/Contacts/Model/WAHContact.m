//
//  WAHContact.m
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import "WAHContact.h"

@implementation WAHContact

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSString *)phoneNumber {
    self = [super init];
    if (self) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-[Contact dealloc]: %@", self);
    //Print self before releasing anything
    [_name release];
    [_emailAddress release];
    [_phoneNumber release];
    
    [super dealloc];
}

@end
