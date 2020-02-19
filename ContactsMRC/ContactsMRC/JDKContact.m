//
//  JDKContact.m
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKContact.h"

@implementation JDKContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    if (self = [super init]) {
        _name = [name copy];
        _email = [email copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    return [[[JDKContact alloc] initWithName:name email:email phoneNumber:phoneNumber] autorelease];
}

- (void)setName:(NSString *)name
{
    if (name != _name) {
        [_name release];
        _name = [name retain];
    }
}

- (void)setEmail:(NSString *)email
{
    if (email != _email) {
        [_email release];
        _email = [email retain];
    }
}

- (void)setPhoneNumber:(NSString *)phoneNumber
{
    if (phoneNumber != _phoneNumber) {
        [_phoneNumber release];
        _phoneNumber = [phoneNumber retain];
    }
}

- (void)dealloc
{
    [_name release];
    _name = nil;
    
    [_email release];
    _email = nil;
    
    [_phoneNumber release];
    _phoneNumber = nil;
    
    [super dealloc];
}

@end
