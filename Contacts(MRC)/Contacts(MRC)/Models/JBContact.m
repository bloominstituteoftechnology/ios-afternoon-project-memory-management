//
//  JBContact.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBContact.h"

@implementation JBContact

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString * _Nullable)emailAddress
                 phoneNumber:(NSString * _Nullable)phoneNumber
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
        // TODO: fix if causes crash w/ nil?
    }
    return self;
}

- (void)dealloc
{
    [_name release];
    if (_emailAddress) { [_emailAddress release]; }
    if (_phoneNumber) { [_phoneNumber release]; }
    [super dealloc];
}

- (void)setName:(NSString *)name
{
    if (_name != name) {
        [_name release];
        _name = [name retain];
//        _name = (name) ? [name retain] : name; // ??? try this if crashes
    }
}

- (void)setEmailAddress:(NSString *)emailAddress
{
    if (_emailAddress != emailAddress) {
        [_emailAddress release];
        _emailAddress = [emailAddress retain];
    }
}

- (void)setPhoneNumber:(NSString *)phoneNumber
{
    if (_phoneNumber != phoneNumber) {
        [_phoneNumber release];
        _phoneNumber = [phoneNumber retain];
    }
}

@end
