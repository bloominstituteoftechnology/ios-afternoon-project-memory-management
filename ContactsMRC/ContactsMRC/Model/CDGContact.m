//
//  CDGContact.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "CDGContact.h"

@implementation CDGContact


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

- (void)dealloc {
    [_name release];
    _name = nil;
    [_emailAddress release];
    _emailAddress = nil;
    [_phoneNumber release];
    _phoneNumber = nil;
    
    [super dealloc];
}

@end
