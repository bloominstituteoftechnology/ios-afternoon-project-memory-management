//
//  GIPContact.m
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPContact.h"

@implementation GIPContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber {
    self = [super init];
    if (self) {
        _name = [name copy];
        _email = [email copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

- (void)setName:(NSString *)name {
    [_name release];
    _name = [name retain];
}

- (void)setEmail:(NSString *)email {
    [_email release];
    _email = [email retain];
}

- (void)setPhoneNumber:(NSString *)phoneNumber {
    [_phoneNumber release];
    _phoneNumber = [phoneNumber retain];
}

- (void)dealloc {
    [_name release];
    [_email release];
    [_phoneNumber release];
    _name = nil;
    _email = nil;
    _phoneNumber = nil;
    [super dealloc];
}

@end
