//
//  CAMContact.m
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import "CAMContact.h"

@implementation CAMContact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone
                     company:(NSString *)company
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _email = [email copy];
        _phone = [phone copy];
        _company = [company copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name
                          email:(NSString *)email
                          phone:(NSString *)phone
                        company:(NSString *)company
{
    return [[[self alloc] initWithName: name
                                 email: email
                                 phone: phone
                               company: company] autorelease];
}

- (void) dealloc
{
    [_name release];
    _name = nil;
    [_email release];
    _email = nil;
    [_phone release];
    _phone = nil;
    [_company release];
    _company = nil;
    [super dealloc];
}

@end
