//
//  BYContact.m
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYContact.h"

@implementation BYContact

- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
    if (self = [super init]) {
        _name = [name retain];
        _email = [email retain];
        _phoneNumber = [phoneNumber retain];
    }
    return self;
}

- (void)dealloc
{
    [_name release];
    //_name = nil;
    [_email release];
    //_email = nil;
    [_phoneNumber release];
    //_phoneNumber = nil;
    [super dealloc];
}

@end
