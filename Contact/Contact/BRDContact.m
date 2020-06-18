//
//  BRDContact.m
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import "BRDContact.h"

@implementation BRDContact

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
    NSLog(@"Deallocating: %@", self);
    [_name release];
    [_emailAddress release];
    [_phoneNumber release];
    
    [super dealloc];
}

@end
