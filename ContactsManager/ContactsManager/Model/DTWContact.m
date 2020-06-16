//
//  DTWContact.m
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import "DTWContact.h"

@implementation DTWContact

- (instancetype)initWithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber
{
    if (self = [super init]) {
        _name = name.copy;
        _email = email.copy;
        _phoneNumber = phoneNumber.copy;
    }
    return self;
}

- (void)dealloc
{
    [_name release];
    [_email release];
    [_phoneNumber release];
    
    [super dealloc];
}

- (void)setName:(NSString *)name
{
    [name retain];
    [_name release];
    _name = name.copy;
}

- (void)setEmail:(NSString *)email
{
    [email retain];
    [_email release];
    _email = email.copy;
}

- (void)setPhoneNumber:(NSString *)phoneNumber
{
    [phoneNumber retain];
    [_phoneNumber release];
    _phoneNumber = phoneNumber.copy;
}

@end
